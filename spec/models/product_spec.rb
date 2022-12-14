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
      @product.price_cents = 5000
      @product.quantity = 4
      @product.name = "Mohamed Hassan"
      @product.save
     
      expect(@product).to be_valid
    end
    
    it "name not provide" do 
      @product = Product.new
      @category = Category.new
      @product.category = @category
      @product.price_cents = 4000
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

  describe "price validiations" do
    it "price provided" do 
      @product = Product.new
      @category = Category.new
      @product.category = @category
      @product.price_cents = 5000
      @product.quantity = 4
      @product.name = "Mohamed Hassan"
      @product.save
     
      expect(@product).to be_valid
    end
    
    it "price not provide" do 
      @product = Product.new
      @category = Category.new
      @product.category = @category
      @product.price_cents = nil
      @product.quantity = 4000
      @product.name = "Mohamed Hassan"
      @product.save
      error_message = @product.errors.full_messages[0]
      puts "____________ #{error_message} "
      expect(error_message).to eq("Price cents is not a number")
      
    
      expect(@product).to be_invalid
    end
  end
  describe "initial example, providing a value to all properties in product" do
    it "given a value to all properties in product and checking if it saved" do
      @product = Product.new
      @category = Category.new
      @product.category = @category
      @product.price_cents = 3000
      @product.quantity = 4
      @product.name = "Mohamed Hassan"
      @product.save
     
      expect(@product).to be_valid
    end 
  end
  describe "quantity validiations" do
    it "quantity provided" do 
      @product = Product.new
      @category = Category.new
      @product.category = @category
      @product.price_cents = 3000
      @product.quantity = 4
      @product.name = "Mohamed Hassan"
      @product.save
     
      expect(@product).to be_valid
    end
    
    it "quantity not provide" do 
      @product = Product.new
      @category = Category.new
      @product.category =  @category
      @product.price_cents = 2000
      @product.quantity = nil
      @product.name = "Mohamed Hassan"
      @product.save
      error_message = @product.errors.full_messages[0]
      puts "____________ #{error_message} "
      expect(error_message).to eq("Quantity can't be blank")

      expect(@product).to be_invalid
    end
  end
  describe "category validiations" do
    it "category provided" do 
      @product = Product.new
      @category = Category.new
      @product.category = @category
      @product.price_cents = 3000
      @product.quantity = 4
      @product.name = "Mohamed Hassan"
      @product.save
     
      expect(@product).to be_valid
    end
    
    it "category not provide" do 
      @product = Product.new
      @category = Category.new
      @product.category = nil
      @product.price_cents = 2000
      @product.quantity = 4
      @product.name = "Mohamed Hassan"
      @product.save
      error_message = @product.errors.full_messages[0]
      puts "____________ #{error_message} "
      expect(error_message).to eq("Category must exist")
      
      #expect(@product).to be_valid
      expect(@product).to be_invalid
    end
  end
  end
end
