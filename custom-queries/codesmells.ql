/**
 * @name Code Smells in Methods
 * @description This query identifies code smells in methods.
 * @kind problem
 * @id custom.codesmells
 * @problem.severity warning
 * @tags maintainability
 * @id ID
 */

import csharp

from Callable m
where m instanceof Method and m.getNumberOfParameters() > 5
select m, "This method has too many parameters."
