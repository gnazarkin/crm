class CRM
	attr_accessor :name, :rolodex

	def initialize(name, rolodex)
		@name = name
		@rolodex = Rolodex.new
	end

	def main_menu
  	print_main_menu
  	user_selected = gets.chomp
  	call_option(user_selected)
	end 

	def clear_screen
		puts "\e[H\e[2J"
	end

	def print_main_menu
		puts "[add] Add a new contact"
 	  puts "[modify] Modify an existing contact"
 	  puts "[delete] Delete a contact"
  	puts "[display all] Display all the contacts"
  	puts "[display] Display a particular contact"
 	  puts "[display attribute] Display an attribute"
  	puts "[exit] Exit"
  	puts "Please type what option you want"
  end

 	def call_option(user_selected)
 		case user_selected
 			when "add" then add_contact
			when "modify" then modify_contact
			when "delete" then delete_contact
			when "display all" then display_all_contacts
			when "display" then display_particular_contact
			when "display attribute" then display_info_by_attribute
			when "exit" then puts "Goodbye"
			else 
				puts "Please try again"
				main_menu
			end 
	end

	def add_contact
		puts "Please put the contact first name"
		first_name = gets.chomp
		puts "Please put the contact last name"
		last_name = gets.chomp
		puts "Please put the contact email"
		email = gets.chomp
		puts "Please put any notes you want"
		notes = gets.chomp
		puts "Contact added"
		contact = Contact.new(first_name, last_name, email, notes)
		@rolodex.add_contact(contact)
		main_menu
	end 

	def modify_contact
		puts "Please choose the contact ID of the contact you want to modify"
		contact = gets.chomp.to_i
		contact = contact - 1
		puts "Please type what attribute you want to modify - [First Name, Last Name, Email, Notes]"
		attribute = gets.chomp.to_s
		puts "Are you sure you want to change the #{attribute.downcase} [yes, no]"
		confirmation = gets.chomp
		confirmation.downcase
		if confirmation == "yes"
			puts "What do you want to change it to?"
			change = gets.chomp.to_s

			case change
				when "First Name" then @rolodex.contact_array[contact].first_name = change
			  when "Last Name" then  @rolodex.contact_array[contact].last_name = change
			  when "Email" then @rolodex.contact_array[contact].email = change
				when "Notes" then @rolodex.contact_array[contact].notes = change
			end 

			puts "Your updated contact is 
			\nFirst Name: #{rolodex.contact_array[contact].first_name} 
			\nLast Name: #{@rolodex.contact_array[contact].last_name} 
			\nEmail: #{@rolodex.contact_array[contact].email} 
			\nNotes:#{@rolodex.contact_array[contact].notes}
			"
	 	else 
	 		main_menu
	 	end
	 		main_menu
	 end 

	 def delete_contact
	 end

	 def display_all_contacts
	 end

	 def display_particular_contact
	 end

	 def display_info_by_attribute
	 end 


end 

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

puts "Please input the CRM name"
crm_name = gets.chomp
puts "Please input Rolodex name"
rolodex = gets.chomp

crm1 = CRM.new(crm_name, rolodex)
crm1.main_menu

