require 'rails_helper'
# require './app/services/westeros_service'
# require 'pry'
# require 'figaro'

RSpec.describe WesterosService do
  it "can get members of a house" do
    service = WesterosService.new
    response = service.house_members("stark")

    expect(response).to be_a(Hash)
    expect(response[:id]).to eq("1")
    expect(response[:attributes]).to be_a(Hash)
    expect(response[:attributes][:members]).to be_a(Array)
    expect(response[:attributes][:members][0]).to have_key(:id)
    expect(response[:attributes][:members][0]).to have_key(:name)
    expect(response[:attributes][:members][0]).to have_key(:house_id)
  end
end
