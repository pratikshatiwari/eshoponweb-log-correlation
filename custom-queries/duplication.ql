/**
 * @name Duplicated Code Blocks
 * @description Detects potential duplicated code in C# projects.
 * @kind problem
 * @tags maintainability
 */

import csharp

from Method m, BlockStmt block
where block.getParent() = m
select m, "Method has a block statement."
