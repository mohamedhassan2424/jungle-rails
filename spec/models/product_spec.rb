require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
=begin
    it "intial example" do 
      @product = Product.new
      @category = Category.new
      @product.name = 'Mohamed Hassan'
      
      @product.save
      expect(@product.name).to be ('Mohamed Hassan')
    end
=end
describe "name validiations" do
    it "name provided" do 
      @product = Product.new
      @category = Category.new
      @product.category = @category
      @product.price = 5
      @product.quantity = 4
      @product.name = "Mohamed Hassan"
      @product.save
     
      expect(@product).to be_valid
    end
    
    it "name not provide" do 
      @product = Product.new
      @category = Category.new
      @product.category = @category
      @product.price = 5
      @product.quantity = 4
      @product.name = nil
      @product.save
      error_message = @product.errors.full_messages[0]
      puts "____________ #{error_message} "
      #expect(@product).to be_valid
      expect(error_message).to eq("Name can't be blank")
      expect(@product).to be_invalid
    end
  end
  end
end
