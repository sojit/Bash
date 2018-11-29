pl=plclient-*;for i in $pl; do t=`echo $i | cut -d- -f1-2`; mkdir $t; tar -xvf $i -C $t; cd $t; k=`echo *`; cd pl*; mv * ../; cd ../; sleep 1; rm -rf $k; cd ../; rm -rf $i; done
grep -i 'v[0-9].[0-9].[0-9][0-9][0-9]/.*[^"*]' -o releases
https://github.com/calmh/mole/releases
```
.       - Any Character Except New Line
\d      - Digit (0-9)
\D      - Not a Digit (0-9)
\w      - Word Character (a-z, A-Z, 0-9, _)
\W      - Not a Word Character
\s      - Whitespace (space, tab, newline)
\S      - Not Whitespace (space, tab, newline)

\b      - Word Boundary
\B      - Not a Word Boundary
^       - Beginning of a String
$       - End of a String

[]      - Matches Characters in brackets
[^ ]    - Matches Characters NOT in brackets
|       - Either Or
( )     - Group

Quantifiers:
*       - 0 or More
+       - 1 or More
?       - 0 or One
{3}     - Exact Number
{3,4} - Range of Numbers (Minimum, Maximum)
```
