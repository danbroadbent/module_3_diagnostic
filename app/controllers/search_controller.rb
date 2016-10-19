class SearchController < ApplicationController
  def index
    @results = NrelService.find_nearest(params)
  end
end
