# frozen_string_literal: true

require 'clockwork'
include Clockwork

handler do |job|
  puts "Running #{job}"
end

# every(10.seconds, 'frequet.job')
# every(3.minuts, 'less.frequent.job')
# every(1.hour, 'hourly.job')

# every(1.day, 'midnight.job', :at => '00:00')
