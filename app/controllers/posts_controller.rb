class PostsController < ApplicationController
  helper PostsHelper
  def index
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
