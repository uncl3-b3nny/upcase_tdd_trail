require 'rails_helper'

  feature 'User marks a todo incomplete' do 
    scenario 'successfully' do 
      sign_in 
      create_todo "Buy milk"

      click_on "Mark complete"
      click_on "Mark incomplete"
      expect(page).not_to display_completed_todo "Buy milk"
      expect(page).to display_todo "Buy milk"
    end  
  end