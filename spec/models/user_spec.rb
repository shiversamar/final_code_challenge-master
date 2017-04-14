# require 'rails_helper'
#
# RSpec.describe User, type: :model do
#   it 'is a thing' do
#     expect{User.new}.to_not raise_error
#   end
#
#       it 'has name has name,email and about' do
#         user = User.new
#         user.email = 'home@yahoo.com'
#         user.first_name = 'testfirstname'
#         user.last_name = 'testlast_name'
#         user.about_me = 'student'
#         expect(user.save).to eq true
#         u2 = User.find_by_first_name 'testfirstname'
#         expect(u2.first_name).to eq 'testfirstname'
#         expect(u2.last_name).to eq 'testlastname'
#         expect(u2.email).to eq 'home@yahoo.com'
#         expect(u2.about_me).to eq 'student'
#       end


  # end # Context
# end # RSpec

# <User id: 2, email: "home@yahoo.com", created_at: "2017-03-27 14:32:09", updated_at: "2017-03-27 14:32:09", first_name: nil, last_name: "ggfgfg", about_me: "sgfgsfg">


# require 'spec_helper'
#
# describe User do
#
#   before do
#     @user = User.new(name: "Example User", email: "user@example.com",
#                      password: "foobar", password_confirmation: "foobar")
#   end
#
#   subject { @user }
#
#   it { should respond_to(:name) }
#   it { should respond_to(:email) }
#   it { should respond_to(:password_digest) }
#   it { should respond_to(:password) }
#   it { should respond_to(:password_confirmation) }
#   it { should respond_to(:authenticate) }
#
#   it { should be_valid }
#
#   it "should create a new instance given valid attributes" do
#     User.create!(@attr)
#   end
#
#   it "should require a name"  do
#     no_name_user = User.new(@attr.merge(:name => ""))
#     no_name_user.should_not be_valid
#   end
#
#   it "should require an email address" do
#     no_email_user = User.new(@attr.merge(:email => ""))
#     no_email_user.should_not be_valid
#   end
#
#   it "should reject names that are too long" do
#     long_name = "a" * 51
#     long_name_user = User.new(@attr.merge(:name => long_name))
#     long_name_user.should_not be_valid
#   end
