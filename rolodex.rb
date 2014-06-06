class Rolodex
	attr_accessor :contact_array, :contact_id, :name
	@contact_id=1

	def initialize(name)
		@name = name
		@contact_array = []
	end

	def find(contact)
		contact = contact - 1
		return contact_array[contact]
	end 


	def add_contact(contact)	
		@contact_array << contact
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