1. A "reference system" must be agreed in advance to provide the word list. This should be accessible during play, e.g. a laptop.
2. Each player has 8 tiles in their hand at any given time, rather than the usual 7 (that's as many as you can fit on a standard Scrabble tile tray).
3. Alphabetic tiles are in a separate bag from punctuation tiles. Each player draws 6 alphabetic characters and 2 punctuation tiles. At the end of each turn, any tiles played are replenished from the bag with their own type, so the player always has 6 and 2 of each type of tile.
4. The word list is drawn from:
  1. Any command available on the reference system, including its arguments and options, e.g. `tar` or `wc -l`
  2. Any file that exists on the reference system, e.g. `resolv.conf`
  3. Any one-line syntax supported by the default shell on the reference system, e.g. `tar czvf r.tgz resolv.conf`
  4. Any file extension defined in the reference system's MIME config (e.g. `/usr/share/mime/globs`)
5. If the play is a script one-liner, it must be syntactically valid. If there is doubt, the command should be tested on the reference system (suggest using a disposable VM!)
6. If the play is a filename, it must exist on the reference system. It does not have to be fully-qualified, but if it is, the full path must be correct.
7. If the play is a command, it is acceptable to list the command with or without further options. If options are given, they must be correct. For example, `tar` is valid, `tar czvf file.tgz` is valid, but `tar --donkey` is not.
8. Comments are not permitted
9. Before the game starts, players may choose to permit syntax and reserved words from other languages, e.g. Perl, C or Puppet.
10. All punctuation tiles are worth 1 point each, except for spaces which are worth 0 points.
11. Blank tiles to represent spaces are freely available, can not be stored in a player's tile tray.
12. For the purposes of Unix Scrabble, Unix is assumed to be case insensitive in all cases.