class WesterosService
  def house_members(house)
    conn = Faraday.new("http://westerosapi.herokuapp.com/api/v1/") do |f|
      f.adapter Faraday.default_adapter
    end
    key = ENV['WESTEROS_KEY']
    response = conn.get("house/#{house}?api_key=#{key}")
    return JSON.parse(response.body, symbolize_names: true)[:data][0]
  end
end
