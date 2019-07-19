class SearchFacade
  def initialize(house)
    @house = house
  end

  def members
    service = WesterosService.new
    members = service.house_members(@house)
  end
end
