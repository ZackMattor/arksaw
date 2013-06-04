class HomeController < ApplicationController
  def index
    @posts = BlogPosts.all
  end 
end


