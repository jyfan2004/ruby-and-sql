# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
puts "There are #{Company.all.count} companies"

new_company = Company.new
#puts new_company.inspect

new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://apple.com"
new_company.save

company = Company.new
company["name"] = "Amazon"
company["city"] = "Seattle"
company["state"] = "WA"
company.save

puts "There are #{Company.all.count} companies"

company = Company.new
company["name"] = "Twitter"
company["city"] = "San Francisco"
company["state"] = "CA"
company["url"] = "https://twitter.com"
company.save

# 3. query companies table to find all row with California company

all_companies = Company.all
#puts all_companies[0].inspect

cali_companies = Company.where({"state" => "CA"})
puts cali_companies.inspect


# 4. query companies table to find single row for Apple

apple = Company.where({"name" => "Apple"}) #where gives you an array.
apple = Company.find_by({"name" => "Apple"}) #find_by gives you a single row. 
#puts apple.inspect 

# 5. read a row's column value
puts apple["url"]
#or
#puts apple.url

# 6. update a row's column value

amazon = Company.find_by({"name" => "Amazon"})
#puts amazon.inspect
amazon["url"] = "https://amazon.com"
amazon.save 
#puts amazon.inspect

# 7. delete a row
twitter = Company.find_by({"name" => "Twitter"})
twitter.destroy 
puts "There are #{Company.all.count} companies"