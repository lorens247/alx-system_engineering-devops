#!/usr/bin/env ruby

# Use the `puts` method to output the result of the regular expression match
# `ARGV[0]` retrieves the first command-line argument passed to the script
# `scan` method searches the string for all matches of the regular expression
# `/School/` is a regular expression that matches the string "School"
# `join` method concatenates all matches into a single string
puts ARGV[0].scan(/School/).join
