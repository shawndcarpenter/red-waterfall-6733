class SearchController < ApplicationController
 def index
  @members = MembersFacade.new(params).members
 end
end