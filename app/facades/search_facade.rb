class SearchFacade
  def initialize(house_id)
    @house_id = house_id
  end

  # def house
  #   if @house == "stark"
  #     1
  #   elsif @house == "lannister"
  #     2
  #   elsif @house == "targaryen"
  #     3
  #   elsif @house == "tyrell"
  #     4
  #   elsif @house == "greyjoy"
  #     5
  #   end
  # end

  def members
    member_data = service.house_members(@house_id)
    member_data.map do |member|
      HouseMember.new(member)
    end
  end

  private
    def service
      @_service ||= WesterosService.new
    end
end
