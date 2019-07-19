require 'rails_helper'

RSpec.describe "as a visitor" do
  context "when i select a house from the dropdown" do
    it "sees all members of that house" do
      # When I visit "/"
      visit '/'
      # And I select "Greyjoy" from the dropdown
      within '.dropdown-search' do
        click_link "Greyjoy"
      end
      # Then my path should be "/search" with "house=greyjoy" in the parameters
      expect(current_path).to eq('/search')
      # And I should see a message "7 Members"
      expect(page).to have_content("& Members")
      # And I should see a list of the 7 members of House Greyjoy
      expect(page.all('.member').count).to eq(7)
      # And I should see a name and id for each member.
      within(page.all('.member').first) do
        expect(page).to have_content("Name: ")
        expect(page).to have_content("ID: ")      
      end
    end
  end
end
