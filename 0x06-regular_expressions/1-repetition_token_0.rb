#!/usr/bin/env ruby

# Use the `puts` method to output the result of the regular expression match
# `ARGV[0]` retrieves the first command-line argument passed to the script
# `scan` method searches the string for all matches of the regular expression
# `/hbt{2,5}n/` is a regular expression that matches the string "hbn" or "hbtn" or "hbttn" or "hbtttn" or "hbttttn"
# `{2,5}` is a quantifier that matches the previous token "t" between 2 and 5 times (inclusive)
puts ARGV[0].scan(/hbt{2,5}n/).join
