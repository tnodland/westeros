class SearchFacade
  def initialize(house)
    @house = house
  end

  def members
    service = WesterosService.new
    data = service.house_members(@house)
    member_data = data[:attributes][:members]
    member_data.map do |member|
      HouseMember.new(member)
    end
  end
end
