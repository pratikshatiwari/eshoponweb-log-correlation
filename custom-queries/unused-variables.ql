import csharp

/**
 * Find local variables that are declared but never used.
 * id cs/unused-variables
 */

from UsingDirective usingDir
where
  not exists (usingDir.getAScopeAccess())
select usingDir, "The namespace '" + usingDir.getNamespaceName() + "' is imported but never used."

