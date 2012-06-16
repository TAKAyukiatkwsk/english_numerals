$:.unshift File.dirname(__FILE__)
require 'num2eng'

input_num = ARGV[0]
n2e = Num2Eng.new
print n2e.get(input_num) + "\n"

