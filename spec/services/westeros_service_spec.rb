require 'rails_helper'
# require './app/services/westeros_service'
# require 'pry'
# require 'figaro'

RSpec.describe WesterosService do
  it "can get members of a house" do
    service = WesterosService.new
    response = service.house_members(1)

    expect(response).to be_a(Array)
    expect(response[0]).to be_a(Hash)
    expect(response[0]).to have_key(:id)
    expect(response[0]).to have_key(:name)
  end
end
