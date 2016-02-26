$:.unshift(File.dirname(__FILE__) + '/lib')
$:.unshift(File.dirname(__FILE__) + '/problems')
$:.unshift(File.dirname(__FILE__) + '/test')

require 'bundler'
Bundler.require :default
