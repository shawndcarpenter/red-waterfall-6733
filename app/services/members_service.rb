class MembersService
  def find_nation_members(params)
    conn = Faraday.new("https://last-airbender-api.fly.dev/api/v1/characters?perPage=200&affiliation=#{params[:nation]}")
    response = conn.get
    JSON.parse(response.body, symbolize_names: :true)
  end
end