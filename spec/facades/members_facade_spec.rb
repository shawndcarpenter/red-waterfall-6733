require 'rails_helper'

RSpec.describe MembersFacade do
  it "exists" do
    @members = MembersFacade.new
    expect(@members.class).to be(MembersFacade)
  end
end