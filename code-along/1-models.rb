# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Company.all.count} companies."

# 2. create new companies
values = 
{name:"Assassins Co.",
url: "assassinscreed.com",
city: "Aleppo",
state: "Syria"}
acreed = Company.new(values)
acreed.save

values = 
{name:"Rainbow corp.",
url: "residentevil.com",
city: "Chicago",
state: "Illinois"}
rainbow = Company.new(values)
rainbow.save

puts "There are now #{Company.all.count} companies."

# 3. query companies table
# Removed this line to check below: puts Company.all.inspect
syrian_company = Company.where({state:"Syria"})[0]
# 0 is to take only 1 value
puts syrian_company.inspect


# 4. read column values from row
puts syrian_company.read_attribute(:url)
puts syrian_company.url

# 5. update attribute value

syrian_company.write_attribute(:slogan, "Where Eagles Dare")
syrian_company.slogan = "Where Eagles Dare"
syrian_company.save

puts syrian_company.inspect

new_company = Company.new
new_company.name = "Weyland-Yutani"
new_company.url = "aliens.com"
new_company