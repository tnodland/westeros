class SearchFacade
  def initialize(house)
    @house = house
  end

  def members
    data = service.house_members(@house)
    member_data = data[:attributes][:members]
    member_data.map do |member|
      HouseMember.new(member)
    end
  end

  private
    def service
      @_service ||= WesterosService.new
    end
end
