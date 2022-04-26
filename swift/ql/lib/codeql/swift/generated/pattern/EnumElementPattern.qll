// generated by codegen/codegen.py
import codeql.swift.elements.decl.EnumElementDecl
import codeql.swift.elements.pattern.Pattern

class EnumElementPatternBase extends @enum_element_pattern, Pattern {
  override string toString() { result = "EnumElementPattern" }

  EnumElementDecl getElement() {
    exists(EnumElementDecl x |
      enum_element_patterns(this, x) and
      result = x.resolve()
    )
  }

  Pattern getSubPattern() {
    exists(Pattern x |
      enum_element_pattern_sub_patterns(this, x) and
      result = x.resolve()
    )
  }
}
