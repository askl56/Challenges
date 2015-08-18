require 'humanize'

99.downto(1).each do |count|
  puts %(
         #{count.humanize} bottle#{count == 1 ? '' : 's'} of beer on the wall
         #{count.humanize} bottle#{count == 1 ? '' : 's'} of beer
         Take #{count == 1 ? 'it' : 'one'} down, pass it around
         #{(count - 1).humanize} bottles of beer on the wall #{':(' if count == 1}
        )
end
