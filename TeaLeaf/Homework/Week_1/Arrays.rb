

  class Name_array
    myArray = ["Patrick", "Tom", "Sam", "Nick", "Berry"]

    myArray.each do |i|
      puts i.to_s
    end
  end


  class Number_array
    numberArray = [1,2,3,4,5,6,7,8,9,10]

    numberArray.each do |a|
      if a >= 5
        puts a
      else
        puts a.to_s + ' is less than 5'
      end
    end
  end
