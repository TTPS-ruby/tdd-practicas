require 'rake/testtask'
require 'rubocop/rake_task'

RuboCop::RakeTask.new

Rake::TestTask.new do |t|
  t.libs += %w[tests src]
  t.test_files = FileList['tests/**/*_test.rb']
  t.verbose = true
end

task default: %i[rubocop test]
