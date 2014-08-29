
def NameArray
    myArray = ["Patrick", "Tom", "Sam", "Nick", "Berry"]

    myArray.each do |i|
      puts i.to_s
    end
  end

def NumberArray
    myArray = [1,2,3,4,5,6,7,8,9,10]

    myArray.each do |a|
      if a >= 5
        puts a
      else
        puts a.to_s + ' is less than 5'
      end
    end
end


def show_odd_num_only
  myArray = [1,2,3,4,5,6,7,8,9,0]

  myArray.each do |a|
    if a%2!= 0
      puts a
    end
  end
end

def use_select_method_to_extract_odd_numbers_into_new_array
  all_numbers = [1,2,3,4,5,6,7,8,9,0]
  #some_letters = ['a','b','c','d']

  #all_numbers.concat (some_letters)
  all_numbers << 11
  all_numbers.insert(0, -1)
  puts all_numbers.inspect
  #all_numbers.

  odd_numbers = all_numbers.select {|x| x%2 !=0}
  puts odd_numbers
end

def general_array
  # Append "11" to the end of the array, prepend "0" to the beginning
  all_numbers = [1,2,3,4,5,6,7,8,9,0]
  all_numbers << 11
  all_numbers.insert(0,-1)
  puts all_numbers.inspect

  all_numbers.delete(11)
  puts all_numbers.inspect
  puts all_numbers.index (11)
  all_numbers.unshift(33,3,3,4,4,5,5,1)
  puts all_numbers.inspect
  all_numbers.uniq!
  puts all_numbers.inspect

end

def summaries
  puts 'The difference between an array and a hash?'
  puts 'Array: Each object in an array has a uniquie key assigned to it.'
  puts 'Hash: Points an object to another object. Assigns a certain meaning to a string.'
  puts
end

#show_odd_num_only
#use_select_method_to_extract_odd_numbers_into_new_array

# general_array
#
# time=Time.new
# todays_date = time.strftime('%m/%d/%Y')
# puts todays_date
#
# bikes = Hash.new
# bikes = {
#     'Bajaj' => 'Pulsar 220, Pulsar 200, Pulsar 180 and Pulsar 150',
#     'Honda' => 'Unicorn, Shine and Splendor',
#     'TVS' => 'Apache, Star City, and Victor'
# }
#
# puts bikes['TVS']
# summaries

def array_as_parameter (array)
  sum = 0.0
  result = 0.0
  if array.length > 0 then
    array.each do |item|
      sum += item
    end
    result = sum / array.length
  end
  return result

end


data =  [3.5, 2.4, 549, 49, 0.001]
average = array_as_parameter (data)
puts "The average is #{average}."

