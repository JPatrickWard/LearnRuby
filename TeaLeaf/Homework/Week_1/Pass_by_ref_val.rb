# # Pass by Value
#
# def pass_by_value (str)
#   str.changeit
#   return new_str
# end
#
# outer_str = 'hi'
# pass_by_value (outer_str)
# #Pass by value says you can NEVER manipulate the string outside the method. Only the value, not the reference is passed
#   # Working in the method, is working on a COPY
#   # outer_str will NEVER be manipulated
# # To affect the out string, the value must be re-set
#
# outer_str = pass_by_value(outer_str) # then in the method pass_by_value, do the return new_str
#
#
# def pass_by_reference
#   str.changeit
#   # Here, the value is changed in the method, and that would change the value of outer_str as well.
#
# end
#
# #In pass by reference, the outer string value is being changed
# outer_str = 'Hey Kool-Aid!'
# some_method

##########
# Ruby's method

def some_method (obj)
  # obj.uniq
  puts obj
  puts
  # obj = [6, 7, 8]
  # puts obj
  # puts

  # This does not change the outer method.
  # But if I call a method that mutates the caller, then it DOES mutate the caller
 puts obj.uniq!
  puts obj
 end

outer_obj = [1,2,2,2,3,3]
some_method (outer_obj)

puts outer_obj
# Remember: Ask self - Did outer object change as a result of passing in the method. Answer: It depends what's happening in Method.
  # IF method calls a method that mutates the caller, then YES, method was changed
  # IF method calls a method that does not mutate the caller, then NO, method was not changed.

# In ruby it's called: Passing by value of the reference

# Lessons Learned thus far
#   1. String inrerpolation vs concatation
#   2. Extract repetative logic to a caller
#   3. Keep track of variable types (class)
#   4. Variable scope determined by do...end; outer scope vars are available to inner scope, but not vise versa
#   5. Pass by reference vs pass by value; if method mutates caller, then outer object was modified = Pass by reference.


