# https://www.codewars.com/kata/56a32dd6e4f4748cc3000006/train/ruby/63b5e5e5afd2f70019c4eb6b

def get_data(town, str)
    str.split("\n")
       .find { |s| s.split(':')[0] == town }
       .scan(/[0-9]+.[0-9]+/)
  end
  
  def mean(town, str)
    get_data(town, str).sum { |i| i.to_f } / 12  rescue -1
  end
  
  def variance(town, str)
    get_data(town, str).sum { |s| (s.to_f - mean(town, str))**2 } / 12 rescue -1
  end