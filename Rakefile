require "bundler/gem_tasks"

require 'rake/testtask'

desc 'Run tests'
task :default => :test

Rake::TestTask.new(:test) do |test|
  test.test_files = FileList['spec/**/*_spec.rb']
  test.libs << 'spec'
  test.verbose = true
end