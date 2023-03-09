require_relative 'task-2'

work('data/data_100_000.txt', disable_gc: false)

puts "MEMORY USAGE: %d MB" % (`ps -o rss= -p #{Process.pid}`.to_i / 1024)
