require_relative 'contact'
require_relative 'crm'

class Rolodex
	attr_accessor :contact_array, :contact_id 
	@contact_id=1

	def initialize
		@contact_array = []
	end



	def add_contact(contact)	
		@contact_array << contact
		# contact.id = @contact_id
		# @contact_id = @contact_id + 1
	end

	def modify_contact()
	end

	def display_all_contacts
		@contact_array.each do |contact|
			puts contact
		end 
		@crm_name.main_menu
	end 

	def display_particular_contact
		puts "Please choose the ID of the contact you want to print"
		contact = gets.chomp
		puts "#{@contact_array[contact]}"
	end 

	def display_info_by_attribute
	end 

	def delete_contact
	end

	def to_s
	end
end 