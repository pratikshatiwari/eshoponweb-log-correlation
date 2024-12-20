/**
 * @name Duplicated Code Blocks
 * @description Detects potential duplicated code in C# projects.
 * @kind problem
 * @tags maintainability
 */

 import csharp

 from BlockStmt b1, BlockStmt b2
 where
   b1 != b2 and
   b1.getFile() = b2.getFile() and
   b1.getStartLine() < b2.getStartLine() and
   b1.toString() = b2.toString()
 select b1, "This block of code is duplicated." 
