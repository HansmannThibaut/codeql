// generated by codegen/codegen.py
import codeql.swift.elements.stmt.LabeledConditionalStmt
import codeql.swift.elements.stmt.Stmt

class WhileStmtBase extends @while_stmt, LabeledConditionalStmt {
  override string toString() { result = "WhileStmt" }

  Stmt getBody() {
    exists(Stmt x |
      while_stmts(this, x) and
      result = x.resolve()
    )
  }
}
