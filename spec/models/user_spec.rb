require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

describe "validation specs for the password and password_confirmation" do 
  it "checking to see if it saved and the password and the password.confirmation have been saved" do
    @user = User.new
    @user.name = "Mohamed Hassan".downcase
    @user.email = "h@gmail.com".downcase
    @user.password = "mohamed"
    @user.password_confirmation = @user.password 
    if @user.password === @user.password_confirmation
      @user.save
      end
    expect(@user).to be_valid
  end
  it "checking if the password and the password confirmation are not the same" do
    @user = User.new
    @user.name = "Mohamed Hassan"
    @user.email = "h@gmail.com".downcase
    @user.password = "mohamed".downcase
    @user.password_confirmation = "wrong password"
    if @user.password === @user.password_confirmation
    @user.save
    end
    expect(@user).to be_invalid
  end
  it "checking the email uniqueness" do
    @user1 = User.new
    @user1.name = "Mohamed Hassan".downcase
    @user1.email = "h@gmail.com".downcase
    @user1.password = "mohamed"
    @user1.password_confirmation = @user1.password 
    @user2 = User.new
    @user2.name = "Mohamed Hassan".downcase
    @user2.email = "H@gmail.com".downcase
    @user2.password = "mohamedh"
    @user2.password_confirmation = @user2.password 
      @user1.save
      @user2.save
      
      error_message = @user2.errors.full_messages[0]
      puts "____________ #{error_message} "
    expect(error_message).to eq("Email has already been taken")
    expect(@user2).to be_invalid
  end
  it "checking the name if it exists" do
    @user = User.new
    @user.name = nil
    @user.email = "h@gmail.com".downcase
    @user.password = "mohamed"
    @user.password_confirmation = @user.password 
    @user.save
    error_message = @user.errors.full_messages
      puts "____________ #{error_message} "
      expect(error_message).to include("Name can't be blank")
      expect(error_message).to include("Name is too short (minimum is 4 characters)")
      expect(@user).to be_invalid
  end
end
end
