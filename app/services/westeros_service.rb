class WesterosService
  def house_members(house)
    key = ENV['WESTEROS_KEY']
    return JSON.parse(get_members(house, key).body, symbolize_names: true)[:data][0]
  end

  private
    def conn
      @_conn = Faraday.new("http://westerosapi.herokuapp.com/api/v1/") do |f|
        f.adapter Faraday.default_adapter
      end
    end

    def get_members(house, key)
      @_response ||= conn.get("house/#{house}?api_key=#{key}")
    end
end
