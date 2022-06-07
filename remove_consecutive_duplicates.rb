def remove_consecutive_duplicates(s)
    res = []
    s.split(" ").map.with_index { |element, index| res << element if res.last != element }
    res.join(' ')
  end 
  