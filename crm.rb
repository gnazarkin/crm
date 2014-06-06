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
		@rolodex.add_contact if user_selected == "add"
		@rolodex.modify_contact if user_selected == "modify"
		@rolodex.delete_contact if user_selected == "delete"
		@rolodex.display_all_contacts if user_selected == "display all"
		@rolodex.display_particular_contact if user_selected == "display"
		@rolodex.display_info_by_attribute if user_selected == "display attribute"
		@rolodex.exit if user_selected == "exit"
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
		"#{rolodex.contact_array.index + 1}: #{@first_name} #{last_name} - #{email} - #{notes}"
	end
end

class Rolodex
	attr_accessor :contact_array

	def initialize
		@contact_array = []
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
		@contact_array << Contact.new(first_name, last_name, email, notes)
		@crm_name.main_menu
	end

	def modify_contact
		puts "Please choose the contact ID of the contact you want to modify"
		contact = gets.chomp
		contact -= 1
		puts "Please type what attribute you want to modify - [First Name, Last Name, Email, Notes]"
		attribute = gets.chomp.to_s
		puts "What do you want to change it to?"
		change = gets.chomp

		if attribute == "First Name"
			puts @contact_array[contact]
		elsif attribute == "Last Name"
			@contact_array[contact]
		elsif attribute == "Email"
			@contact_array[contact]
		elsif attribute == "Notes"
			@contact_array[contact]
		end 

		crm1.main_menu

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

