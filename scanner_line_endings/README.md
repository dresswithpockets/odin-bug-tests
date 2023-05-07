Testing the scanner against CRLF and LF line endings when reading comments.

Results:

```
[Package: test]
[Test: test_scanner_comment_crlf]
C:/Users/Ashley/source/github.com/dresswithpockets/odin-bug-tests/scanner_line_endings/test.odin(23:5): expected //comment, got //comment
[test_scanner_comment_crlf : FAILURE]
[Test: test_scanner_comment_lf]
[test_scanner_comment_lf : SUCCESS]
----------------------------------------
1/2 SUCCESSFUL
```
