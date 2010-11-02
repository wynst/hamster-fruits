$LOAD_PATH.unshift(File.dirname(__FILE__) + '/..')
require 'config/boot'
require 'hamster-fruits'
run HamsterFruits::Application

