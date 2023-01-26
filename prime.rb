# https://www.codewars.com/kata/561e9c843a2ef5a40c0000a4/train/ruby/63ac995f51b485016ff7173c

require 'prime'

def gap(gap_i, low_i, high_i)
  Prime.each(high_i)
       .select{ |prime| prime >= low_i }
       .each_cons(2)
       .find{|a,b| b - a == gap_i }
end