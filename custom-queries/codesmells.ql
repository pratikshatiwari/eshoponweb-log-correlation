import csharp

from Callable m
where m.getParameterTypes().size() > 5
select m, "This method has too many parameters."
