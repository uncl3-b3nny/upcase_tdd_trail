require 'rails_helper'

feature "User creates to do" do 
  scenario "successfully" do
    sign_in 
    click_on "Add a new todo"
    fill_in "Title", with: "Buy bread"
    click_on "Submit"
    # binding.pry

    expect(page).to have_css '.todos li', text: "Buy milk"
    #this is passing. Buy bread and Buy milk are clearly different text. what am i missing? Its not checking that text = "Buy milk"
  end
end
