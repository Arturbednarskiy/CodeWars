def validate(n)
    n.to_s
    .reverse
    .split("")
    .map {|n| n.to_i}
    .map.with_index(1){|n ,i| i.even? ? n*2 : n}
    .map{|i| i > 9 ? i - 9 : i}
    .reduce {|a, b| a + b} % 10 == 0
  end 

# 3.0.4 :010 > validate (214585565)
#=> false 
# 3.0.4 :011 > validate (371449635398431)
#=> true