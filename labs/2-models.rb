# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_person = Salesperson.new
new_person["first_name"] = "James"
new_person["last_name"] = "Fan"
new_person["email"] = "james.fan@kellogg.northwestern.edu"
new_person.save

new_person = Salesperson.new
new_person["first_name"] = "Danny"
new_person["last_name"] = "Concha"
new_person["email"] = "danny.concha@kellogg.northwestern.edu"
new_person.save

# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

person = Salesperson.find_by({"first_name" => "James"})
person["email"] = "jyfan2004@gmail.com"
person.save
#puts Salesperson.all.inspect

# CHALLENGE:
# 5. write code to display each salesperson's full name

salespeople = Salesperson.all
for salesperson in salespeople
    first_name = salesperson["first_name"]
    last_name = salesperson["last_name"]
    puts "#{first_name} #{last_name}"

end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
