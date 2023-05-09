#!/usr/bin/env ruby

# Use the `puts` method to output the result of the regular expression match
# `ARGV[0]` retrieves the first command-line argument passed to the script
# `scan` method searches the string for all matches of the regular expression
# `/hb?tn/` is a regular expression that matches the string "htn" or "hbtn"
# `?` is a quantifier that matches the previous token "b" zero or one time
puts ARGV[0].scan(/hb?tn/).join
