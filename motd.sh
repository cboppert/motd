arr[1]=":q[uit]nQuit Vim. This fails when changes have been ma['i']e.\n"
arr[2]=":q[uit]!\nQuit without writing.\n"
arr[3]=":q[uit]\nQuit Vim.  This fails when changes have been ma[0]e.\n"
arr[4]=":q[uit]!\nQuit without writing.\n"
arr[5]=":cq[uit]\nQuit always, without writing.\n"
arr[6]=":wq\nWrite the current file and exit.\n"
arr[7]=":wq!\nWrite the current file and exit always.\n"
arr[8]=":wq {file}\nWrite to {file}.  Exit if not editing the last\n"
arr[9]=":wq! {file}\nWrite to {file} and exit always.\n"
arr[10]=":[range]wq[!]\n[file]  Same as above, but only write the lines in [range].\n"
arr[11]="ZZ\nWrite current file, if modified, and exit.\n"
arr[12]="ZQ\nQuit current file and exit (same as \":q!\").\n"
arr[13]=":e[dit]\nEdit the current file.  This is useful to re-edit the current file, when it has been changed outside of Vim.\n"
arr[14]=":e[dit]!\nEdit the current file always.  Discard any changes to the current buffer.  This is useful if you want to start all over again.\n"
arr[15]=":e[dit] {file}\nEdit {file}.  \n"
arr[16]=":e[dit]! {file}\nEdit {file} always.  Discard any changes to the current buffer.\n"
arr[17]="gf\nEdit the file whose name is under or after the cursor.  Mnemonic: \"goto file\".\n"
arr[18]="a\nAppend text after the cursor [count] times.\n"
arr[19]="A\nAppend text at the end of the line [count] times.\n"
arr[20]="i\nInsert text before the cursor [count] times.\n"
arr[21]="I\nInsert text before the first non-blank in the line [count] times.\n"
arr[22]="gI\nInsert text in column 1 [count] times.\n"
arr[23]="o\nBegin a new line below the cursor and insert text, repeat [count] times.\n"
arr[24]="O\nBegin a new line above the cursor and insert text, repeat [count] times.\n"
arr[25]=":r[ead] [name]\nInsert the file [name] below the cursor.\n"
arr[26]=":r[ead] !{cmd}\nExecute {cmd} and insert its standard output below the cursor. \n"
arr[27]="<Del> or x\nDelete [count] characters under and after the cursor\n"
arr[28]="X\ndelete [count] characters before the cursor\n"
arr[29]="d{motion}\nDelete text that {motion} moves over \n"
arr[30]="dd\nDelete [count] lines\n"
arr[31]="d\nDelete the characters under the cursor until the end of the line\n"
arr[32]="{Visual}x or d\ndelete the highlighted text (for {Visual} see \n"
arr[33]="{Visual}CTRL-H\nWhen in Select mode: Delete the highlighted text\n"
arr[34]="{Visual}X or D\ndelete the highlighted lines \n"
arr[35]=":[range]d[elete]\nDelete [range] lines (default: current line)\n"
arr[36]=":[range][d[elete] {count}\nDelete {count} lines, starting with [range]\n"
arr[37]="r{char}\nreplace the character under the cursor with {char}.\n"
arr[38]="R\nEnter Insert mode, replacing characters rather than inserting\n"
arr[39]="~\nSwitch case of the character under the cursor and move the cursor to the right.  If a [count] is given, do that many characters.\n"
arr[40]="~{motion}\nswitch case of {motion} text.\n"
arr[41]="{Visual}~\nSwitch case of highlighted text\n"
arr[42]=":[range]s[ubstitute]/{pattern}/{string}/[c][e][g][p][r][i][I] [count]\nFor each line in [range] replace a match of {pattern} with {string}.\n:[range]s[ubstitute] [c][e][g][r][i][I] [count] :[range]&[c][e][g][r][i][I] [count]\nRepeat last :substitute with same search pattern and substitute string, but without the same flags.  You may add extra flags\nThe arguments that you can use for the substitute commands:\n[c]  Confirm each substitution.  Vim positions the cursor on the matching string. You can type:\n      'y'      to substitute this match\n'n'      to skip this match\n      <Esc>   to skip this match\n      'a'      to substitute this and all remaining matches {not in Vi}\n      'q'      to quit substituting {not in Vi}\n      CTRL-E  to scroll the screen up {not in Vi}\n      CTRL-Y  to scroll the screen down {not in Vi}.\n[e]     When the search pattern fails, do not issue an error message and, in\n particular, continue in maps as if no error occurred.\n[g]  Replace all occurrences in the line.  Without this argument, replacement occurs only for the first occurrence in each line.\n[i]  Ignore case for the pattern.\n[I]  Don't ignore case for the pattern.\n[p]  Print the line containing the last substitute.\n"
arr[43]="\"{a-zA-Z0-9.%#:-\"}\nUse register {a-zA-Z0-9.%#:-\"} for next delete, yank or put (use uppercase character to append with delete and yank) ({.%#:} only work with put).\n"
arr[44]=":reg[isters]\ndisplay the contents of all numbered and named registers.\n"
arr[45]=":reg[isters] {arg}\ndisplay the contents of the numbered and named registers that are mentioned in {arg}.  \n"
arr[46]=":di[splay] [arg]\nSame as :registers. \n"
arr[47]="[\"x]y{motion}\nYank {motion} text [into register x].\n"
arr[48]="[\"x]yy\nYank [count] lines [into register x]\n"
arr[49]="[\"x]Y\nyank [count] lines [into register x] (synonym for yy).\n"
arr[50]="{Visual}[\"x]y\nYank the highlighte[37] text [into register x] (for {Visual} see \n"
arr[51]="{Visual}[\"x]Y\nYank the highlighte[38] lines [into register x]\n"
arr[52]=":[range]y[ank] [x]\nYank [range] lines [into register x].\n"
arr[53]=":[range]y[ank] [x] {count}\nYank {count} lines, starting with last line number in [range] (default: current line), [into register x].\n"
arr[54]="[\"x]p\nPut the text [from register x] after the cursor [count] times.\n"
arr[55]="[\"x]P\nPut the text [from register x] before the cursor [count] times.\n"
arr[56]="[\"x]gp\nJust like \"p\", but leave the cursor just after the new text.\n"
arr[57]="[\"x]gP\nJust like \"P\", but leave the cursor just after the new text.\n"
arr[58]=":[line]pu[t] [x]\nPut the text [from register x] after [line] (default current line).\n"
arr[59]=":[line]pu[t]! [x]\nPut the text [from register x] before [line] (default current line).\n"
arr[60]="u\nUndo [count] changes. \n"
arr[61]=":u[ndo]\nUndo one change. \n"
arr[62]="CTRL-R\nRedo [count] changes which were undone. \n"
arr[63]=":red[o]\nRedo one change which was undone. \n"
arr[64]="U\nUndo all latest changes on one line.  {Vi: while not moved off of {t}\n"
arr[65]=".\nRepeat last change, with count replaced with [count].\n"
arr[66]="Basic motion commands\n\n  k            <up>\n h     <left>    <right>\n  j           <down>\n"
arr[67]="h\n[count] characters to the left (exclusive).\n"
arr[68]="l\n[count] characters to the right (exclusive).\n"
arr[69]="k or CTRL-P\n[count] lines upward\n"
arr[70]="j or CTRL-J or CTRL-N\n[count] lines downward (linewise).\n"
arr[71]="0\nTo the first character of the line (exclusive). \n"
arr[72]="<Home>\nTo the first character of the line (exclusive). \n"
arr[73]="^\nTo the first non-blank character of the line\n"
arr[74]="$ or <End>\nTo the en[51] of the line and [count - 1] lines downward\n"
arr[75]="g0 or g<Home>\nWhen lines wrap ('wrap on): To the first character of the screen line (exclusive).  differs from \"0\" when a line is wider than the screen.  When lines don't wrap ('wrap' off): To the leftmost character of the current line that is on the screen.  Differs from \"0\" when the first character of the line is not on the screen.\n"
arr[76]="g^\nWhen lines wrap ('wrap' on): To the first non-blank character of the screen line (exclusive).  differs from \"^\" when a line is wider than the screen.  When lines don't wrap ('wrap' off): To the leftmost non-blank character of the current line that is on the screen.  Differs from \"^\" when the first non-blank character of the line is not on the screen. \n"
arr[77]="g$ or g<End>\nWhen lines wrap ('wrap' on): To the last character of the screen line an[54] [count - 1] screen lines downward (inclusive).  Differs from \"$\" when a line is wider than the screen.  When lines don't wrap ('wrap' off): To the rightmost character of the current line that is visible on the screen.  Differs from \"$\" when the last character of the line is not on the screen or when a count is used.\n"
arr[78]="f{char}\nTo [count]'th occurrence of {char} to the right.  The cursor is placed on {char} (inclusive).\n"
arr[79]="F{char}\nTo the [count]'th occurrence of {char} to the left.  The cursor is placed on {char} (inclusive).\n"
arr[80]="t{char}\nTill before [count]'th occurrence of {char} to the right.  The cursor is placed on the character left of {char} (inclusive).\n"
arr[81]="T{char}\nTill after [count]'th occurrence of {char} to the left.  The cursor is placed on the character right of {char} (inclusive).\n"
arr[82]=";\nRepeat latest f, t, F or T [count] times.\n"
arr[83]=",\nRepeat latest f, t, F or T in opposite direction [count] times.\n"
arr[84]="-  <minus>\n[count] lines upward, on the first non-blank character\n"
arr[85]="+ or CTRL-M or <CR><br> CTRL-M or<br> <CR>\n[count] lines downward, on the first non-blank character (linewise).\n"
arr[86]="_  <underscore>\n[count] - 1 lines downward, on the first non-blank character (linewise).\n"
arr[87]="<C-End> or G\nGoto line [count], default last line, on the first non-blank character.\n"
arr[88]="<C-Home> or gg\nGoto line [count], default first line, on the first non-blank character.\n"
arr[89]="<S-Right> or w\n[count] words forward \n"
arr[90]="<C-Right> or W\n[count] WORDS forward \n"
arr[91]="e\nForward to the end of word [count] \n"
arr[92]="E\nForward to the end of WORD [count] \n"
arr[93]="<S-Left> or b\n[count] words backward \n"
arr[94]="<C-Left> or B\n[count] WORdS backward \n"
arr[95]="ge\nBackward to the end of word [count] \n"
arr[96]="gE\nBackward to the end of WORD [count]\n"
arr[97]="(\n[count] sentences backward\n"
arr[98]=")\n[count] sentences forward \n"
arr[99]="{\n[count] paragraphs backward\n"
arr[100]="}\n[count] paragraphs forward \n"
arr[101]="]]\n[count] sections forward or to the next '{' in the first column.  When used after an operator, then the '}' in the first column.\n"
arr[102]="][\n[count] sections forward or to the next '}' in the first column \n"
arr[103]="[[\n[count] sections backward or to the previous '{' in the first column\n"
arr[104]="[]\n[count] sections backward or to the previous '}' in the first column \n"
arr[105]="z.\nCenter the screen on the cursor\n"
arr[106]="zt\nScroll the screen so the cursor is at the top\n"
arr[107]="zb\nScroll the screen so the cursor is at the bottom\n"
arr[108]="m{a-zA-Z}\nSet mark {a-zA-Z} at cursor position (does not move the cursor, this is not a motion command).\n"
arr[109]="m'  or\nSet the previous context mark.  This can be jumped to with the \"''\" or \"``\" command (does not move the cursor, this is not a motion command).\n"
arr[110]=":[range]ma[rk] {a-zA-Z}\nSet mark {a-zA-Z} at last line number in [range], column 0.  default is cursor line.\n"
arr[111]=":[range]k{a-zA-Z}\nSame as :mark, but the space before the mark name can be omitted.\n"
arr[112]="'{a-z}\nTo the first non-blank character on the line with mark {a-z} (linewise).\n"
arr[113]="'{A-Z0-9}\nTo the first non-blank character on the line with mark {A-Z0-9} in the correct file\n"
arr[114]="\`{a-z}\nTo the mark {a-z}\n"
arr[115]="\`{A-Z0-9}\nTo the mark {A-Z0-9} in the correct file\n"
arr[116]=":marks\nList all the current marks (not a motion command).\n"
arr[117]=":marks {arg}\nList the marks that are mentioned in {arg} (not a motion command).  For example:\n"
arr[118]="/{pattern}[/]\nSearch forward for the [count]'th occurrence of {pattern}\n"
arr[119]="/{pattern}/{offset}\nSearch forward for the [count]'th occurrence of {pattern} and go {offset} lines up or down.\n"
arr[120]="/<CR>\nSearch forward for the [count]'th latest used pattern\n"
arr[121]="//{offset}<CR>\nSearch forward for the [count]'th latest used pattern with new.  If {offset} is empty no offset is used.\n"
arr[122]="?{pattern}[?]<CR>\nSearch backward for the [count]'th previous occurrence of {pattern} \n"
arr[123]="?{pattern}?{offset}<CR>\nSearch backward for the [count]'th previous occurrence of {pattern} and go {offset} lines up or down \n"
arr[124]="?<CR>\nSearch backward for the [count]'th latest used pattern \n"
arr[125]="??{offset}<CR>\nSearch backward for the [count]'th latest used pattern with new {offset}.  If {offset} is empty no offset is used.\n"
arr[126]="n\nRepeat the latest \"/\" or \"?\" [count] times.\n"
arr[127]="N\nRepeat the latest \"/\" or \"?\" [count] times in opposite direction.\n"

rand=$[$RANDOM % ${#arr[@]}]
printf "${arr[$rand]}"
