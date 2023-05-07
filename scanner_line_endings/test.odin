package test

import scan "core:text/scanner"
import "core:testing"

fixture_crlf :: #load("fixture_crlf", string)
fixture_lf :: #load("fixture_lf", string)
expected :: "//comment"

test_scan :: proc(t: ^testing.T, source: string) {
    scanner := scan.Scanner{}
    scan.init(&scanner, source)

    scanner.flags -= {.Skip_Comments}

    tok := scan.scan(&scanner)
    for tok != scan.Comment && tok != scan.EOF {
        tok = scan.scan(&scanner)
    }

    comment := scan.token_text(&scanner)
    testing.expect_value(t, comment, expected)
}

@(test)
test_scanner_comment_crlf :: proc(t: ^testing.T) {
    test_scan(t, fixture_crlf)
}

@(test)
test_scanner_comment_lf :: proc(t: ^testing.T) {
    test_scan(t, fixture_lf)
}
