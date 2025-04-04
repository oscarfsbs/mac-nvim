; Keywords
[
 "const"
 "fun"
 "import"
 "var"
 "if"
 "else"
 ] @keyword


(if
  name: (identifier) @constant)


; Variables
(constant
  name: (identifier) @constant)
(var
  name: (identifier) @constant)


; Comments
(comment) @comment
(multi_line_comment) @comment

(printer) @keyword

; Literals
(string) @string
(number) @number
(bool) @boolean
(identifier) @constant

; Functions

(call_parameter
  name: (identifier) @constant)

(function_call
  name: (identifier) @function)

(function
  name: (identifier) @function)
(function_parameter
  name: (identifier) @variable.parameter)

(import
  module: (default_import) @module)

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
 "="
] @punctuation.delimiter
