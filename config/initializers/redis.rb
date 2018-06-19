require 'rubygems'
require 'redis'

$redis = Redis.new(:timeout => 0)
