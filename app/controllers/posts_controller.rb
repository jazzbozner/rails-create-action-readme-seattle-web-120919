class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    # Post.create(title: params[:title], description: params[:description])
    post = Post.new
    post.title = params[:title]
    post.description = params[:description]
    post.save
    redirect_to posts_path
  end
end
