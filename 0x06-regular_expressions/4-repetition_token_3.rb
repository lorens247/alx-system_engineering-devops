#!/usr/bin/env ruby

# Use the `puts` method to output the result of the regular expression match
# `ARGV[0]` retrieves the first command-line argument passed to the script
# `scan` method searches the string for all matches of the regular expression
# `/hbt*n/` is a regular expression that matches the string "hn" or "hbtn" or "hbttn" or "hbtttn" or "hbttttn", etc.
# `*` is a quantifier that matches the previous token "t" zero or more times
puts ARGV[0].scan(/hbt*n/).join
