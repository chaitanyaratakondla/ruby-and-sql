# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-associations.rb

# 1. Query all of the contacts at Apple Inc.
acreed = Company.where({name:"Assassins Co."})[0]
acreed_id = acreed.id
contacts = Contact.where({company_id: acreed_id})
puts "Known Assassins: #{contacts.count}"
for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.company.name}"
end
# contact.company.name works becuase we put the association that conacts belong to a company in the models

# 2. add association to contacts in Company model

# 3. add association to company in Contact model
