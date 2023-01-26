# https://www.codewars.com/kata/55a5085c1a3d379fbb000062/train/ruby

def locker_run lockers
  (1..Math.sqrt(lockers))
  .map { |i| i * i }
end
