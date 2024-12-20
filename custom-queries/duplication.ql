/**
 * @name Duplicated Code Blocks
 * @description Detects potential duplicated code in C# projects.
 * @kind problem
 * @tags maintainability
 */

import csharp

from Stmt::BlockStmt block
select block, block.getLocation().getStartLine()
