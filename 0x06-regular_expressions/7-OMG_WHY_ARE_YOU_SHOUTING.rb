#!/usr/bin/env ruby

# Use the `puts` method to output the result of the regular expression match
# `ARGV[0]` retrieves the first command-line argument passed to the script
# `scan` method searches the string for all matches of the regular expression
# `/[A-Z]+/` is a regular expression that matches one or more consecutive uppercase letters.
# `[A-Z]` is a character class that matches any uppercase letter from A to Z.
# `+` is a quantifier that matches one or more of the previous token, in this case any uppercase letter.
puts ARGV[0].scan(/[A-Z]+/).join
