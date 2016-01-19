require 'rails_helper'

#start with a "smoke test"
feature "User visits homepage" do 
  scenario "successfully" do
    visit root_path #visit usually accepts a string, but rails helpers such as root_path work too

    expect(page).to have_css 'h1', text: 'Todos'
  end
end
