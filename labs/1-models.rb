# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Contact.all.count} contacts."

# 2. create 1-2 new contacts for each company (they can be made up)

acreed = Company.where({name:"Assassins Co."})[0]
values = {
    first_name: "Altair",
    last_name: "ibn la-Ahad",
    email: "Altair@thecreed.com",
    company_id: acreed.id
}
altair = Contact.new(values)
altair.save
values = {
    first_name: "Ezio",
    last_name: "Auditore",
    email: "Ezio@thecreed.com",
    company_id: acreed.id
}
ezio = Contact.new(values)
ezio.save

#redoing this code the other way of assigning values
rainbow = Company.where({name:"Rainbow corp."})[0]
unknown = Contact.new(values)
unknown.first_name = "Can't"
unknown.last_name = "Remember"
unknown.email = "whoknows@rainbow.com"
unknown.phone_number = "555-1234"
unknown.company_id = rainbow.id
unknown.save

wy = Company.where({name:"Weyland-Yutani"})[0]
values = {
    first_name: "Ripley",
    email: "Ripley@w-yutani.com",
    phone_number: "555-6666",
    company_id: wy.id
}
ripley = Contact.new(values)
ripley.save

# Don't have to have new variable name each time. Can each just be contact, and contact will get overwritten each time

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

puts "---------------------------"
puts "Contacts: #{Contact.all.count}"
all_contacts = Contact.all
#allcontacts is an array. Therefore, start a loop
for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end