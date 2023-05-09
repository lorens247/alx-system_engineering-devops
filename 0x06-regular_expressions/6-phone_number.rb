#!/usr/bin/env ruby

# Use the `puts` method to output the result of the regular expression match
# `ARGV[0]` retrieves the first command-line argument passed to the script
# `scan` method searches the string for all matches of the regular expression
# `/^[0-9]{10}$/` is a regular expression that matches any string that has exactly 10 digits, and nothing else before or after.
# `^` is an anchor that matches the start of a line, and `$` matches the end of a line.
# `[0-9]` is a character class that matches any digit from 0 to 9.
# `{10}` is a quantifier that matches the previous token, in this case the character class `[0-9]`, exactly 10 times.
puts ARGV[0].scan(/^[0-9]{10}$/).join
