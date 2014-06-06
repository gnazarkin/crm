require_relative 'rolodex'
require_relative 'crm'

class Contact
	attr_accessor :id, :first_name, :last_name, :email, :notes

	def initialize(first_name, last_name, email, notes)
		@id = id
		@first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
	end

	def to_sym
		"#{id}: #{@first_name} #{last_name} - #{email} - #{notes}"
	end
end