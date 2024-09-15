#!/usr/bin/env ruby
#
#  Sort integer arguments (ascending)
#

result = []

ARGV.each do |arg|
  # Skip if not an integer
  next unless arg =~ /^-?\d+$/

  # Convert to integer
  i_arg = arg.to_i

  # Insert in sorted order
  inserted = false
  result.each_with_index do |elem, index|
    if elem > i_arg
      result.insert(index, i_arg)
      inserted = true
      break
    end
  end

  # If not inserted, append to end
  result << i_arg unless inserted
end

# Print each integer on a new line
result.each { |num| puts num }