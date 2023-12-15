require 'rails_helper'

RSpec.describe MembersFacade do
  it "exists", :vcr do
    params = {"nation"=>"fire+nation", "commit"=>"Search For Members", "controller"=>"search", "action"=>"index"}
    @members = MembersFacade.new(params)
    expect(@members.class).to be(MembersFacade)
  end
end