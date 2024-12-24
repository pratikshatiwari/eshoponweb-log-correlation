import csharp

from LocalVariable var
where
  var.getAnAccess() = null and
  not var.getName().matches("_")
select var, "The variable '" + var.getName() + "' is declared but never used."
