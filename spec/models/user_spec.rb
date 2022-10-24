require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

describe "validation specs for the password and password_confirmation" do 
  it "checking to see if it saved and the password and the password.confirmation have been saved" do
    @user = User.new
    @user.name = "Mohamed Hassan".downcase
    @user.email = "h@gmail.com".downcase
    @user.password = "moh"
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
    @user.password = "moh".downcase
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
    @user1.password = "moh"
    @user1.password_confirmation = @user1.password 
    @user2 = User.new
    @user2.name = "Mohamed Hassan".downcase
    @user2.email = "h@gmail.com".downcase
    @user2.password = "moh"
    @user2.password_confirmation = @user2.password 
    if @user1.password === @user1.password_confirmation ||@user2.password === @user2.password_confirmation
      @user2.save
      end
    expect(@user1.email != @user2.email).to be_valid
  end

end
end
