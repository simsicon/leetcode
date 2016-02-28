require File.expand_path('../loader', __FILE__)

require 'rake/testtask'
dir = File.dirname(__FILE__)

task :default => :test

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = Dir.glob("#{dir}/test/cases/**/*_test.rb")
  t.warning = false
  t.verbose = true
end

namespace :test do
  desc "Run test isolated"
  task :isolated do
    ARGV.shift
    ARGV.each do |name|
      sh(Gem.ruby, "-I#{dir}/lib", "-I#{dir}/test", Dir.glob("#{dir}/test/cases/**/#{name}.rb").last) or raise "Failures"
    end
  end
end
