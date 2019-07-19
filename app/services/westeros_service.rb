class WesterosService
  def house_members(house)
    return JSON.parse(get_members(house).body, symbolize_names: true)
  end

  private
    def conn
      @_conn = Faraday.new("https://westeros-as-a-service.herokuapp.com/api/v1/") do |f|
        f.adapter Faraday.default_adapter
      end
    end

    def get_members(house)
      @_response ||= conn.get("house/#{house}") do |f|
        f.headers['x_api_key'] = ENV["WESTEROS_KEY"]
      end
    end
end
