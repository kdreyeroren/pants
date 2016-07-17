require 'rails_helper'

RSpec.describe "checkout" do
  
  it "allows a user to purchase products" do
  
    Product.create! :name => "Skinny Jeans", :price => 100
    visit "/"
    click_button "More Info"




  end

end