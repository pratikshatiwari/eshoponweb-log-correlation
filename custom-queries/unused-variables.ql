import csharp

/**
 * Find local variables that are declared but never used.
 * id cs/unused-variables
 */
from LocalVariable var
where
  not exists (DataFlow::VariableAccess va | va.getVariable() = var)
select var, "The variable '" + var.getName() + "' is declared but never used."
