class SearchController < ApplicationController

  def search
    post = Post.all
    if params[:q].nil?
      @result = post
    else
      @result = post.search(params[:q])
    end
  end
end
