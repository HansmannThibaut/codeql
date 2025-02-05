// generated by codegen/codegen.py
import codeql.swift.elements.AstNode
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.pattern.Pattern

class CaseLabelItemBase extends @case_label_item, AstNode {
  override string toString() { result = "CaseLabelItem" }

  Pattern getPattern() {
    exists(Pattern x |
      case_label_items(this, x) and
      result = x.resolve()
    )
  }

  Expr getGuard() {
    exists(Expr x |
      case_label_item_guards(this, x) and
      result = x.resolve()
    )
  }
}
