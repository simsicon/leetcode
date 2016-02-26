require File.expand_path('../loader', __FILE__)

require 'rake/testtask'
dir = File.dirname(__FILE__)

task :default => :test

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = Dir.glob("#{dir}/test/cases/**/*_test.rb")
  t.warning = true
  t.verbose = true
end
