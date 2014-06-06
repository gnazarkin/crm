class Rolodex
	attr_accessor :contact_array, :contact_id, :name
	

	def initialize(name)
		@name = name
		@contact_array = []
		@contact_id = 1
	end

	def find(contact)
		@contact_array.find {|c| c.id == contact} 
	end 


	def add_contact(contact)	
		contact.id = @contact_id
		@contact_array << contact
		@contact_id += 1
	end

	def modify_contact()
	end

	def display_all
		@contact_array.each {|contact| puts contact }
	end 

	def display_particular_contact(contact)
		puts "#{find(contact)}"
	end 


	def display_info_by_attribute(attribute)
	case attribute 
		when "First Name" then @contact_array.each {|contact| puts contact.first_name}
		when "Last Name" then  @contact_array.each {|contact| puts contact.last_name}
	  when "Email" then @contact_array.each {|contact| puts contact.email_name}
		when "Notes" then @contact_array.each {|contact| puts contact.notes}
		end 
	end 

	def delete_contact(contact)
		@contact_array.delete_at(contact)
	end

end 