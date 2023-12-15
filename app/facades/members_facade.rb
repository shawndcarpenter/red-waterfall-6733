class MembersFacade
  def initialize(params)
    @params = params
  end

  def members
    service = MembersService.new

    json = service.find_nation_members(@params)

    @members = json.map do |member_data|
      Member.new(member_data)
    end
  end 
end