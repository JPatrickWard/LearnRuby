# passing_block.rb

# def take_block(&block)
#   block.call
# end
#
# take_block do
#   puts "Block being called in the method!"
# end
#
# puts take_block("hello")

# passing_block.rb

def take_block(number, &block)
  block.call
end

[1, 2, 3, 4, 5].each do |number|
  take_block number do
    puts "Block being called in the method! #{number}"
  end
end
