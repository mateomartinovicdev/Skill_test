def duplicate_count(text)
   symbolcount = {}
   text.downcase.chars.each do |char|
    if symbolcount.key?(char)
        symbolcount[char] += 1
    else
        symbolcount[char] = 1
    end
   end
   repeted_count = symbolcount.select{|k,v| v > 1}
   repeted_count.length
end