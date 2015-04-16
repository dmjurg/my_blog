class PostsController < ApplicationController

  before_action :authenticate_user!
  def index
    if current_user
      @posts = current_user.posts
    else
      @posts = Post.all
    end
    @post = Post.new
    @session_test = session[:test]
    @recent_post = session[:recent_post]
    session.delete(:test)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    if current_user
      @post = current_user.posts.new(post_params)
    else
      @post = Post.new
    end
    if @post.save
      session[:recent_post] = @post.content
      redirect_to @post
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts"
  end

  def testing_session
    session[:test] = "test"
    @session_test = session[:test]
  end

  private
  def post_params
    return params[:post].permit(:title, :content)
  end

end
