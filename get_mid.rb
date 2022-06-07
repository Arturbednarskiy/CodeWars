def get_middle(s)
while s.length > 2 do
  s = s.chop.reverse.chop.reverse
  end
return s
end 