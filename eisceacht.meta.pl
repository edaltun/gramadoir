# This script is used for converting the hopefully-user-readable
# eisceacht-xx.in into the somewhat complicated eisceacht-xx.pl
# It only needs to be changed if the grammar of the .in file changes
# or new tags are added, etc.
# Copyright (C) 2003 Kevin P. Scannell <scannell@slu.edu>
#
# This is free software; see the file COPYING for copying conditions.  There is
# NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#
s/^/s\/<E[^>]*>(/;
s/:$/)<\\\/E>\/\$1\/g;/;
s/\|<B><Z>[^+]+\+<\\\/Z>[^\/]+\/B>//g;
s/\(\?:<\[\\\/A-DF-Z\]\[^>\]\*>\)\+/<[A-DF-Z][^>]*>/g;
