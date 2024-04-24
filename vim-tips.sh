#!/usr/bin/env bash

VIM_TIPS[1]=$(cat << EOF
ViM

Quitting ViM without Writing

:q[uit]  - Quit Vim. This fails when changes have been made.
:q[uit]! - Quit without writing.

:cq[uit] - Quit always, without writing.

:ZQ      - Quit current file and exit (same as :q!
EOF
)

VIM_TIPS[2]=$(cat << EOF
ViM

Writing and Quitting ViM

:wq           - Write the current file and exit.
:wq!          - Write the current file and exit always.

:wq {file}    - Write to {file}.  Exit if not editing the last
:wq! {file}   - Write to {file} and exit always.

:[range]wq[!] - [file]  Same as above, but only write the lines in [range].

:ZZ           - Write current file, if modified, and exit.
EOF
)

VIM_TIPS[3]=$(cat << EOF
ViM

Loading Files to Edit

:e[dit]            - Edit the current file.
                     reloads current file, when it has been changed outside of Vim.

:e[dit]!           - Edit the current file always.
                     Discard any changes to the current buffer.

:e[dit] {file}     - Edit {file}.

:e[dit]! {file}    - Edit {file} always.
                     Discard any changes to the current buffer.

- gf               - normal mode - goto file 
                     Edit file whose name is under or after cursor.
EOF
)

VIM_TIPS[4]=$(cat << EOF
ViM

Appending Text in Normal Mode

a - Append text after the cursor [count] times.
A - Append text at the end of the line [count] times.
EOF
)

VIM_TIPS[5]=$(cat << EOF
ViM

Inserting Text in Normal Mode

i  - Insert text before the cursor [count] times.
I  - Insert text before the first non-blank in the line [count] times.
gI - Insert text in column 1 [count] times.
o  - Begin a new line below the cursor and insert text, repeat [count] times.
O  - Begin a new line above the cursor and insert text, repeat [count] times.

:r[ead] [name] - Insert the file [name] below the cursor.
:r[ead] !{cmd} - Execute {cmd} and insert its standard output below the cursor. 
EOF
)

VIM_TIPS[6]=$(cat << EOF
ViM

Insert File or Command Output

:r[ead] [name] - Insert the file [name] below the cursor.
:r[ead] !{cmd} - Execute {cmd} and insert its standard output below the cursor. 
EOF
)

VIM_TIPS[7]=$(cat << EOF
ViM

Deleting in Normal Mode

x         - Delete [count] characters under and after the cursor
X         - delete [count] characters before the cursor

d{motion} - Delete text that {motion} moves over 

dd        - Delete [count] lines
d         - Delete the characters under the cursor until the end of the line
EOF
)

VIM_TIPS[8]=$(cat << EOF
ViM

Deleting in Visual Mode

x or d - delete the highlighted text (for {Visual} see 
X or D - delete the highlighted lines 
EOF
)

VIM_TIPS[9]=$(cat << EOF
ViM

Deleting by Command

:[range]d[elete]          - Delete [range] lines (default: current line)
:[range][d[elete] {count} - Delete {count} lines, starting with [range]
EOF
)

VIM_TIPS[10]=$(cat << EOF
ViM

Replacing in Normal Mode

r{char} - replace the character under the cursor with {char}.
EOF
)

VIM_TIPS[11]=$(cat << EOF
ViM

Replace Mode

R - Enter Insert mode, replacing characters rather than inserting
EOF
)

VIM_TIPS[12]=$(cat << EOF
ViM

Toggle Character Case

[count]~  - Switch case of character under cursor and move cursor to right.
            If a [count] is given, do that many characters.

~{motion} - Switch case of {motion} text.

{Visual}~ - Switch case of highlighted text
EOF
)

VIM_TIPS[13]=$(cat << EOF
ViM

Substitution

:[range]s[ubstitute]/{pattern}/{string}/[c][e][g][p][r][i][I] [count]

For each line in [range] replace a match of {pattern} with {string}.

:[range]s[ubstitute] [c][e][g][r][i][I] [count]
:[range]&[c][e][g][r][i][I] [count]

Repeat last :substitute with same search pattern and substitute string, but without the same flags. 

You may add extra flags

The arguments that you can use for the substitute commands:

[c] - Confirm each substitution

- y        - confirm
- n        - skip
- <Esc>    - skip
- a        - substitute this and all remaining
- q        - quit substituting
- <Ctrl-E> - scroll screen up
- <Ctrl-Y> - scroll screen down

[e] - No error on search pattern fail,
      AND continue in maps as if no error occurred

[g] - Replace all occurrences in line instead of just first

[i] - Ignore case

[I] - Observe case

[p] - Print the line containing the last substitute
EOF
)

VIM_TIPS[14]=$(cat << EOF
ViM

Registers in Normal Mode

"{a-zA-Z0-9.%#:-"} - Use register {a-zA-Z0-9.%#:-"}
                       for next delete, yank or put 

- use uppercase character to append with delete and yank
  ("a - replaces, "A - appends)

Special Registers (Only work with put)

- .        - Creates a space
- <Shift>. - Puts most recent register addition... if after yank append, will be the full register, if after delete append, will only be the recent delete

- %        - Buffer path

- #        - Swap Buffer path

- :        - Last command
EOF
)

VIM_TIPS[15]=$(cat << EOF
ViM

Register commands

:reg[isters]       - display the contents of all numbered and named registers.

:reg[isters] {arg} - display the contents of the numbered and named registers that are mentioned in {arg}.  

:di[splay] [arg]   - Same as :registers. 
EOF
)

VIM_TIPS[16]=$(cat << EOF
ViM

Yanking into Registers in Normal Mode

["x]y{motion} - Yank {motion} text [into register x].
["x]yy        - Yank [count] lines [into register x]
["x]Y         - yank [count] lines [into register x] (synonym for yy).
EOF
)

VIM_TIPS[17]=$(cat << EOF
ViM

Yanking into Registers in Visual Mode

{Visual}["x]y - Yank the highlighted text [into register x]
{Visual}["x]Y - Yank the highlighted lines [into register x]
EOF
)

VIM_TIPS[18]=$(cat << EOF
ViM

Yanking into Registers

:[range]y[ank] [x]         - Yank [range] lines [into register x].
:[range]y[ank] [x] {count} - Yank {count} lines
                             starting with last line number in [range]
									  (default: current line), [into register x].
EOF
)

VIM_TIPS[19]=$(cat << EOF
ViM

Putting from Registers in Normal Mode

["x]p  - Put the text [from register x] after the cursor [count] times.
["x]P  - Put the text [from register x] before the cursor [count] times.
["x]gp - Just like "p", but leave the cursor just after the new text.
["x]gP - Just like "P", but leave the cursor just after the new text.
EOF
)

VIM_TIPS[20]=$(cat << EOF
ViM

Putting from Registers by Command

Defaults to current line

:[line]pu[t] [x]  - Put the text [from register x] after [line]
:[line]pu[t]! [x] - Put the text [from register x] before [line]
EOF
)

VIM_TIPS[21]=$(cat << EOF
ViM

Undoing and Redoing in Normal Mode

u       - Undo [count] changes. 
:u[ndo] - Undo one change. 
CTRL-R  - Redo [count] changes which were undone. 
U       - Undo all latest changes on one line.
EOF
)

VIM_TIPS[22]=$(cat << EOF
ViM

Undoing by Command

:red[o]\nRedo one change which was undone. \n
EOF
)

VIM_TIPS[23]=$(cat << EOF
ViM

Repeating

. - Repeat last change, with count replaced with [count].
EOF
)

VIM_TIPS[24]=$(cat << EOF
ViM

Basic Motion

 k          <up>
h l   <left>    <right>
 j         <down>

[count] [motion] - move count characters or lines
EOF
)

VIM_TIPS[25]=$(cat << EOF
ViM

Movement in Menus

CTRL-K - move up one menu item
CTRL-J - move down one menu item
EOF
)

VIM_TIPS[26]=$(cat << EOF
ViM

Movement Commands

0  - To the first character of the line (exclusive). 
^  - To the first non-blank character of the line
$  - To the end of the line and [count - 1] lines downward
EOF
)

VIM_TIPS[27]=$(cat << EOF
ViM

g Movement Commands

g0 - ('wrap on):
     To first character of screen line (exclusive).
	  Differs from "0" when a line is wider than screen.

	  ('wrap' off):
	  To leftmost character of current line that is on screen.
	  Differs from "0" when first character of line is not on screen.

g^ - ('wrap' on):
     To first non-blank character of screen line (exclusive).
	  Differs from "^" when a line is wider than screen.

	  ('wrap' off):
	  To leftmost non-blank character of the current line that is on screen.
	  Differs from "^" when first non-blank character of line is not on screen. 

g\$ - ('wrap' on):
     To last character of the screen line and [count - 1] screen lines downward (inclusive).
	  Differs from "\$" when a line is wider than screen.

	  ('wrap' off):
	  To rightmost character of current line that is visible on screen.
	  Differs from "\$" when last character of line is not on screen or when a count is used.
EOF
)

VIM_TIPS[28]=$(cat << EOF
ViM

Character Movements

f{char} - To [count]'th occurrence of {char} to right.
          The cursor is placed on {char} (inclusive).
F{char} - To the [count]'th occurrence of {char} to the left.
          The cursor is placed on {char} (inclusive).

t{char} - Till before [count]'th occurrence of {char} to the right.
          The cursor is placed on the character left of {char} (inclusive).

T{char} - Till after [count]'th occurrence of {char} to the left.
          The cursor is placed on the character right of {char} (inclusive).

;       - Repeat latest f, t, F or T [count] times.
,       - Repeat latest f, t, F or T in opposite direction [count] times.
EOF
)

VIM_TIPS[29]=$(cat << EOF
ViM

Vertical Movement

<minus>             - [count] lines upward, on first non-blank character

+ or CTRL-M or <CR> - [count] lines downward, on first non-blank character (linewise).

<underscore>        - [count] - 1 lines downward, on first non-blank character (linewise).

<C-End> or G        - Goto line [count], default last line, on first non-blank character.

<C-Home> or gg      - Goto line [count], default first line, on first non-blank character.
EOF
)

VIM_TIPS[30]=$(cat << EOF
ViM

Movement by Words and WORDS

- separated by whitespace

word - Either:
		 sequence of letters, digits, and underscores
		 Or:
		 sequence of other non-blank characters

WORD - sequence of non-blank characters


<S-Right> or w - [count] words forward 
W              - [count] WORDS forward 

e              - Forward to the end of word [count] 
E              - Forward to the end of WORD [count] 

<S-Left> or b  - [count] words backward 
B              - [count] WORDS backward 

ge             - Backward to the end of word [count] 
gE             - Backward to the end of WORD [count]
EOF
)

VIM_TIPS[31]=$(cat << EOF
ViM

Movement by Sentences

Sentences end in '.', '!', '?' followed by end of line, space, or tab.

( - [count] sentences backward
) - [count] sentences forward 
EOF
)

VIM_TIPS[32]=$(cat << EOF
ViM

Movement by Paragraphs

Simple: A paragraph begins after each empty line.

For more see ':help paragraph'

{ - [count] paragraphs backward
} - [count] paragraphs forward 
EOF
)

VIM_TIPS[33]=$(cat << EOF
ViM

Movement by Sections

These are helpful for C programs and may need to be remapped for your favorite programming language du jour

See ':help section'

]] - [count] sections forward or to next '{' in first column.
     When used after an operator, then the '}' in the first column.

][ - [count] sections forward or to the next '}' in the first column 

[[ - [count] sections backward or to the previous '{' in the first column

[] - [count] sections backward or to the previous '}' in the first column 
EOF
)

VIM_TIPS[34]=$(cat << EOF
ViM

Scolling the Screen based on the Cursor

z. - Center the screen on the cursor
zt - Scroll the screen so the cursor is at the top
zb - Scroll the screen so the cursor is at the bottom
EOF
)

VIM_TIPS[35]=$(cat << EOF
ViM

Setting Marks in Normal Mode

m{a-zA-Z} - Set mark {a-zA-Z} at cursor position.

m'        - Set the previous context mark.
            This can be jumped to with the "''" or "``" command.
EOF
)

VIM_TIPS[36]=$(cat << EOF
ViM

Setting Marks by Command

:[range]ma[rk] {a-zA-Z} - Set mark {a-zA-Z} at last line number in [range],
                          column 0.  default is cursor line.

:[range]k{a-zA-Z}       - Same as :mark, but the space before the mark name can be omitted.
EOF
)

VIM_TIPS[37]=$(cat << EOF
ViM

Jumping to Marks

'{a-z} - To the first non-blank character on the line with mark {a-z} (linewise).
'{A-Z0-9} - To the first non-blank character on the line with mark {A-Z0-9} in the correct file
\`{a-z} - To the mark {a-z}
\`{A-Z0-9} - To the mark {A-Z0-9} in the correct file
EOF
)

VIM_TIPS[38]=$(cat << EOF
ViM

Mark Commands

:marks - List all the current marks (not a motion command).
:marks {arg} - List the marks that are mentioned in {arg} (not a motion command).  For example:
EOF
)

VIM_TIPS[39]=$(cat << EOF
ViM

Searching for Patterns

/{pattern}[/]           - Search forward for the [count] occurrence of {pattern}

/{pattern}/{offset}     - Search forward for the [count] occurrence of {pattern} 
                          and go {offset} lines up or down.

/<CR>                   - Search forward for the [count] latest used pattern
//{offset}<CR>          - Search forward for the [count] latest used pattern with new.
                          If {offset} is empty no offset is used.

?{pattern}[?]<CR>       - Search backward for the [count] previous occurrence of {pattern} 
?{pattern}?{offset}<CR> - Search backward for the [count] previous occurrence of {pattern}
                          and go {offset} lines up or down 

?<CR>                   - Search backward for the [count] latest used pattern 
??{offset}<CR>          - Search backward for the [count] latest used pattern with new {offset}.
                          If {offset} is empty no offset is used.

Repetition

n - Repeat the latest "/" or "?" [count] times.
N - Repeat the latest "/" or "?" [count] times in opposite direction.
EOF
)
