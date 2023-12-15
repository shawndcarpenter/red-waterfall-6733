class SearchController < ApplicationController
 def index
  @members = MembersFacade.new(params).members
  @nation = params[:nation].gsub("+", " ").upcase
 end
end