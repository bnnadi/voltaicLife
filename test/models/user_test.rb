require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "a user should enter a first name" do
     user = User.new
     assert !user.save
     assert !user.error[:first_name].empty?
   end
  
     test "a user should enter a last name" do
     user = User.new
     assert !user.save
     assert !user.error[:last_name].empty?
   end
   
      test "a user should enter a profile name" do
     user = User.new
     assert !user.save
     assert !user.error[:profile_name].empty?
   end
   
    test "a user should enter a unique profile name" do
     user = User.new
     user.profile_name = 'bnnadi'
     user.email= "bnnadi@fullsail.edu"
     user.first_name = 'Bisike'
     user.last_name = 'Nnadi'
     user.password = 'password'
     user.password_confirmation = 'password'
     assert !user.save
     assert !user.error[:profile_name].empty?
   end
end
