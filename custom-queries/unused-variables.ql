/**
 * Find local variables that are declared but never used.
 */
from LocalVariable var
where
  not exists (var.getAnAccess())
select var, "The variable '" + var.getName() + "' is declared but never used."
