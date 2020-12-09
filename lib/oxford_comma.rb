def oxford_comma(array)
  if array.length() < 2
    array.join
  elsif array.length() == 2
    array.join(" and ")
  else
    oxford_formatted = ""
    array.each do |element|
      if array.index(element) == 0
        oxford_formatted << element        
      elsif array.index(element) > 0 && array.index(element) < (array.length() - 1)
        oxford_formatted << ", #{element}"
      else
        oxford_formatted << ", and #{element}"
      end
    end
    return oxford_formatted
  end
end