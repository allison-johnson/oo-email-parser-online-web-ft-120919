# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email_list

  def initialize(a_list)
    @email_list = a_list
  end #initialize

  def parse
    email_arr = @email_list.split(" ")

    email_arr_clean = email_arr.collect do |email|
      email.chomp(",")
    end #collect

    email_arr_clean.uniq  
  end #parse

end #class