#!/usr/bin/env ruby
Format = ARGV[0].scan(/from:(.\w+)|to:(.\w+)|flags:([0-9:-]+)/)
List = [Format[0].compact, Format[1].compact, Format[2].compact]
puts List.join(',')


#!/usr/bin/env ruby

# Use the `scan` method to search the first command-line argument passed to the script (`ARGV[0]`) for all matches of the regular expression.
# The regular expression matches either of the following:
# - `from:` followed by one or more word characters (`\w+`)
# - `to:` followed by one or more word characters (`\w+`)
# - `flags:` followed by one or more digits, colons or dashes (`[0-9:-]+`)
# The parentheses capture the matching text into separate groups.
Format = ARGV[0].scan(/from:(.\w+)|to:(.\w+)|flags:([0-9:-]+)/)

# Create an array (`List`) containing the matches from the `Format` array.
# Use the `compact` method to remove any `nil` elements from the array, as some matches may not have been found.
List = [Format[0].compact, Format[1].compact, Format[2].compact]

# Use the `join` method to concatenate all elements of the `List` array into a single string, separated by commas.
# Output the resulting string to the console using the `puts` method.
puts List.join(',')
