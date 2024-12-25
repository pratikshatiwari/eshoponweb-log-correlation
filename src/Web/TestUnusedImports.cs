import csharp

/**
 * @name Unused Namespace Detection
 * @description Finds unused `using` directives in C# code.
 * @kind problem
 * @problem.severity warning
 * @tags maintainability
 */
from NamespaceImport importStmt
where not exists (
  Method m, Expr e |
  m.getAType().(Type).getNamespace().hasQualifiedName(importStmt.getTargetNamespace()) and
  e.getType().(Type).getNamespace().hasQualifiedName(importStmt.getTargetNamespace())
)
select importStmt, "This 'using' directive is not used in the code."
