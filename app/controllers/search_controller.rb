class SearchController < ApplicationController
  def index
    render locals: {
      search: SearchFacade.new(params["house"])
    }
  end
end
