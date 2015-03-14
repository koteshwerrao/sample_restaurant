class SearchController < ApplicationController
  def index
     @search = Sunspot.search(MenuItem) do
     fulltext params[:search]
  end
  @branches = @search.results.collect{|x|x.branch.name}
end
end
