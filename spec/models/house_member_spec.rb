require 'spec_helper'
require 'pry'
require './app/models/house_member'


RSpec.describe HouseMember do
  it "has attributes" do
    data =   {
               "id": 1,
               "name": "Rickard Stark",
               "house_id": 1,
               "created_at": "2019-05-15T03:54:20.930Z",
               "updated_at": "2019-05-15T03:54:20.930Z"
                    }
    member = HouseMember.new(data)
    expect(member.id).to eq(1)
    expect(member.name).to eq("Rickard Stark")
  end
end
