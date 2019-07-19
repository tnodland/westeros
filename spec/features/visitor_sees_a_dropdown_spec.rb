require 'rails_helper'

RSpec.describe "homepage" do
  it "can see house greyjoy" do
    visit '/'

    expect(page).to have_link("Greyjoy")
  end
end
