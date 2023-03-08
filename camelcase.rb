def to_camel_case(str)
    if str.include?('_')
        camel = str.split("_").map.with_index{|word, idx| idx == 0 ? word : word.capitalize}.join('')
    else 
        str.split('-').collect(&:capitalize).join('')
    end
end
