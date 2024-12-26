/**
 * @name Unused imports
 * @description Finds using directives in .NET code that are not used.
 * @kind problem
 * @tags unused-code
 * @id cs/unused-imports
 */

import csharp

/**
 * Finds all using directives in the file.
 */
from UsingDirective usingDirective
where
  // Check that the using directive is not referenced elsewhere in the file
  not exists (
    // Look for any reference in the file to the namespace or type brought in by the using directive
    Referrable ref |
    ref.getFile() = usingDirective.getFile() and
    ref.getName().startsWith(usingDirective.getNamespaceOrType().toString())
  )
select usingDirective, "This using directive is not used in the file."
