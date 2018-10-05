def task(str)

  integer_array = str.split("").map.with_index{|c,i| c[/[0-9]/]==c ? [c.to_i,i] : ""}.select{|element| element!=""}
  sum_10 = []
  integer_array.each do |first|
    integer_array.each do |second|
      if first[0] + second[0] == 10 and first[1] < second[1] and not sum_10.include?([first[1],second[1]])
        sum_10.push([first[1],second[1]])
      end
    end
  end
  if sum_10 == []
    return false
  end
  sum_10.each do |index|
    start = index[0]
    finish = index[1]
    if str.slice(start,finish).count("?") != 3
      return false
    end
  end
  return true
end
 p task('arrb6???4xxbl5???eee5') #true
 p task('arrb6???4xxbl544?eee5') #false
