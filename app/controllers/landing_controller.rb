class LandingController < ApplicationController

  def index
  	@articles = Article.limit(10)
  end
end
