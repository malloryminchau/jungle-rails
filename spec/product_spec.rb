require_relative 'rails_helper'

describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    
    it 'validates name is present' do
      @product = Product.new(:name => 'test')
      expect(@product.name).to be_present
    end

    it 'validates price is present' do
      @product = Product.new(:price => 200)
      expect(@product.price).to be_present
    end

    it 'validates quantity is present' do
      @product = Product.new(:quantity => 10)
      expect(@product.quantity).to be_present
    end

    it 'validates category is present' do
      @product = Product.new(:category_id => 1)
      expect(@product.category_id).to be_present
    end
  end

end