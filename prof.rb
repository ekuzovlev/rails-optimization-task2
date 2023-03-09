# require_relative 'task-2'
# require 'benchmark'
# require 'memory_profiler'

# report = MemoryProfiler.report do
#   work('data/data_100_000.txt', disable_gc: false)
# end

# report.pretty_print(scale_bytes: true)



# ==================================================
# require 'json'
# require 'stackprof'
# require_relative 'task-2'


# profile = StackProf.run(mode: :object, raw: true) do
#  work('data/data_20_000.txt', disable_gc: false)
# end

# File.write('stackprof_reports/stackprof.json', JSON.generate(profile))

# ==================================================
# require 'stackprof'
# require_relative 'task-2'

# StackProf.run(mode: :object, out: 'stackprof_reports/stackprof.dump', raw: true) do
#  work('data/data_20_000.txt', disable_gc: false)
# end
# ===================================================

require 'ruby-prof'
require_relative 'task-2'

RubyProf.measure_mode = RubyProf::MEMORY

result = RubyProf.profile do
 work('data/data_100_000.txt', disable_gc: true)
end


# printer = RubyProf::CallTreePrinter.new(result)
# printer.print(:path => "ruby_prof_reports", :profile => 'callgrind')

# printer = RubyProf::FlatPrinter.new(result)
# printer.print(File.open('ruby_prof_reports/flat.txt', 'w+'))

# printer = RubyProf::DotPrinter.new(result)
# printer.print(File.open('ruby_prof_reports/graphviz.dot', 'w+'))

# printer = RubyProf::GraphHtmlPrinter.new(result)
# printer.print(File.open('ruby_prof_reports/graph.html', 'w+'))

printer = RubyProf::CallStackPrinter.new(result)
printer.print(File.open('ruby_prof_reports/callstack.html', 'w+'))


# ===================================================
# ===================================================
# ===================================================




# require 'json'
# require 'stackprof'
# require_relative 'user'

# profile = StackProf.run(mode: :wall, raw: true) do
#  work
# end

# File.write('stackprof_reports/stackprof.json', JSON.generate(profile))

# https://www.speedscope.app/

# ====

# require 'stackprof'
# require_relative 'user'

# StackProf.run(mode: :wall, out: 'stackprof_reports/stackprof.dump', interval: 1000) do
#  work
# end

# ====

# require 'ruby-prof'
# require_relative 'task-1'

# RubyProf.measure_mode = RubyProf::WALL_TIME

# result = RubyProf.profile do
#  work('data/data_1_000_000.txt', disable_gc: true)
# end


# printer = RubyProf::CallTreePrinter.new(result)
# printer.print(:path => "ruby_prof_reports", :profile => 'callgrind')

# printer = RubyProf::CallStackPrinter.new(result)
# printer.print(File.open("ruby_prof_reports/callstack.html", "w+"))


# printer = RubyProf::GraphHtmlPrinter.new(result)
# printer.print(File.open("ruby_prof_reports/graph.html", "w+"))


# printer = RubyProf::FlatPrinter.new(result)
# printer.print(File.open("ruby_prof_reports/flat.txt", "w+"))
