require 'rails_helper'

RSpec.describe MembersService do 
  it "can return members" do
    params = {"nation"=>"fire+nation", "commit"=>"Search For Members", "controller"=>"search", "action"=>"index"}
    member_results = MembersService.new.find_nation_members(params)
    # binding.pry
    expect(member_results).to be_a Array

    member_results.each do |member|
      expect(member).to have_key(:_id)
      expect(member[:_id].to_i).to be_a(Integer)

      expect(member).to have_key(:allies)
      expect(member[:allies]).to be_a(Array)
     
      expect(member).to have_key(:enemies)
      expect(member[:enemies]).to be_an(Array)

      expect(member).to have_key(:name)
      expect(member[:name]).to be_a(String)

      expect(member).to have_key(:affiliation)
      expect(member[:affiliation]).to be_a(String)
    end
  end
end