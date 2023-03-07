def narcissistic?(value)
    number = value.to_s.chars.map{|n| n.to_i}
    pownum = number.map{ |n| n**number.length}
    result = 0
    pownum.each do |p|
      result += p 
    end
    if result == value
      return true
    else
      return false
    end
end