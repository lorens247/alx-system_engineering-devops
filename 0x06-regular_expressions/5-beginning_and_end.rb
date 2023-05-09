#!/usr/bin/env ruby

# Use the `puts` method to output the result of the regular expression match
# `ARGV[0]` retrieves the first command-line argument passed to the script
# `scan` method searches the string for all matches of the regular expression
# `/^h.n$/` is a regular expression that matches any string that starts with "h", ends with "n", and has exactly one character in between.
# `^` is an anchor that matches the start of a line, and `$` matches the end of a line.
# `.` is a wildcard character that matches any single character except for a newline character.
puts ARGV[0].scan(/^h.n$/).join
