require 'rails_helper'
require 'capybara/rails'

RSpec.feature "ProductDetails", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "See product details" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
    

    click_on 'Add', :match => :first
    
    expect(page).to have_content "My Cart (1)"
    sleep 5
    save_screenshot
  end

end
