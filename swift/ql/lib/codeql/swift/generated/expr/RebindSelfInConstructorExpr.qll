// generated by codegen/codegen.py
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.decl.VarDecl

class RebindSelfInConstructorExprBase extends @rebind_self_in_constructor_expr, Expr {
  override string toString() { result = "RebindSelfInConstructorExpr" }

  Expr getSubExpr() {
    exists(Expr x |
      rebind_self_in_constructor_exprs(this, x, _) and
      result = x.resolve()
    )
  }

  VarDecl getSelf() {
    exists(VarDecl x |
      rebind_self_in_constructor_exprs(this, _, x) and
      result = x.resolve()
    )
  }
}
