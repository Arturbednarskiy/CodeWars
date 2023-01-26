# https://www.codewars.com/kata/count-of-positives-slash-sum-of-negatives

def count_positives_sum_negatives(lst)
  return [] if lst.empty?
  [pos = lst.count  {|n| n > 0},
   neg = lst.select {|n| n < 0}.sum]
end