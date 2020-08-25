# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
# class EmailAddressParser
#
#   attr_accessor :email
#
#   def initialize(email)
#     @email = email
#   end
#
#
#   def parse
#     new_arr = []
#     array = @email.split(" ")
#     array.each do |e|
#       new_arr << e.strip!
#     end
#     puts new_arr
#   end
# end







class EmailAddressParser

  attr_accessor :email

  def initialize(email)
    @email = email
  end


  def parse
    final_arr = []
    array = @email.split(/[,\s]+/)
    # binding.pry
    array.each do |address|
      if !final_arr.include?(address)
        final_arr << address
      end
    end
    puts final_arr
    final_arr

  end
end

em = EmailAddressParser.new("avi@test.com, arel@test.com")
# em = EmailAddressParser.new("avi@test.com arel@test.com")

em.parse
