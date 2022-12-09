require 'faker'
desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do
  names = ["Pat", "Raghu", "Jelani", "Sam", "Jerry", "Sammy" , "Jenny"]
  
   7.times do |count|
      user = User.new
      user.username = names.at(count)
      user.password = "my_password"
      user.save
   end
end
