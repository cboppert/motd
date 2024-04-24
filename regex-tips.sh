#!/usr/bin/env bash

REGEX_TIPS[1]="""
REGEX

Bracket Experssions

- List of characters enclosed in brackets - []
- Matches any single character in list
- ^ - Matches any single character not in list

E.G. - [0123456789] matches any digit
"""

REGEX_TIPS[2]="""
REGEX

Bracket Expression > Range Expression

- Within Bracket Expression
- Two characters separated by hyphen
- Inclusively matches any single character that sorts between
- Depends on locale's collating sequence and character set

- E.G. (Default C Locale) - [a-d] = [abcd]

- Set LC_ALL to C to ensure C Locale used
"""

REGEX_TIPS[3]="""
REGEX

Bracket Expression > Predefined Classes

[:alnum:]
[:alpha:]
[:blank:]
[:cntrl:]
[:digit:]
[:graph:]
[:lower:]
[:print:]
[:punct:]
[:space:]
[:upper:]
[:xdigit:]

E.G. [[:alnum:]] = [a-zA-Z0-9]
"""


REGEX_TIPS[4]="""
REGEX

Bracket Expression > Special Characters

To include these characters

- ] < must be placed first in list
- ^ < anywhere but first
- - < last
"""


REGEX_TIPS[5]="""
REGEX

Line Anchor Matching
^ - Matches empty string at beginning of line
$ - Matches empty string at end of line
"""

REGEX_TIPS[6]="""
REGEX

Word Anchor Matching

\< - Matches empty string at beginnig of word
\> - Matches emptyn string at end of word

\b - Matches empty string at the edge of a word
\B - Matches empty string NOT at edge of a word
"""

REGEX_TIPS[7]="""
REGEX

\w and \W

\w = [_[:alnum:]]
\W = [^_[:alnum:]]
"""

REGEX_TIPS[8]="""
REGEX

Repetition

Preceding item is...

? - Optional, matched at most once
* - zoro or more times
+ - one or more times
{n} - exactly n times
{n,} - n or more
{,m} - at most m times - GNU Extension
{n,m} - at least n, at most m
"""

REGEX_TIPS[9]="""
REGEX

Concatenation

Two regexs may be concatenated, matches any string formed by concatenating two substrings that respectively match the concatenated regexs
"""

REGEX_TIPS[10]="""
REGEX

Alternation

- |: - Infix Operatior
- Two regexs may be joined by the infix operator
- Resulting regex matches any string matching either regex
"""

REGEX_TIPS[11]="""
REGEX

Precedence

Repetition > Concatenation > Alternation

- Override with parens to form sub expressions
"""

REGEX_TIPS[12]="""
REGEX

Back-References and Subexpressions

- () - creates a subexpression

- \n - back-reference - matches the substring previously matched by the nth parenthesized subexpression of the regular expression
"""

REGEX_TIPS[13]="""
REGEX

Basic vs Extended

Basic - ?, +, {, |, (, ) - lose meaning - use \?, \+, \{, \|, \(, and \) instead
"""

REGEX_TIPS[14]="""
REGEX

REGEX in ViM - Search and Replace

:range s[ubstitute]/pattern/string/cgiI

c - confirm each substitution
g - replace all occurrences in line
i - ignore case
I - observe case
"""

REGEX_TIPS[15]="""
REGEX

REGEX in ViM
"""

REGEX_TIPS[15]="""
REGEX

REGEX in JavaScript
"""

REGEX_TIPS[16]="""
REGEX

REGEX in Erlang
"""

REGEX_TIPS[17]="""
REGEX

REGEX in the Shell
"""
