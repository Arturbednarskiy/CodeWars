require 'date'

visits = [["09:00", "10:07"], ["10:20", "11:35"], ["12:00", "17:00"], ["11:00", "11:30"], ["11:20", "12:30"], ["11:30", "18:15"]]

  time_ranges = visits.map do |i| 
    start, finish = i.map { |t| DateTime.parse(t) }
    start..finish
    end

  times = time_ranges.map {|el| el.first} | time_ranges.map {|el| el.last}

  result = times.map do |t|
      time_ranges.count { |tr| tr.cover?(t) }
    end
    .max 
