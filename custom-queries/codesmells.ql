import csharp

from Callable m
where m instanceof Method and m.getNumberOfParameters() > 5
select m, "This method has too many parameters."
