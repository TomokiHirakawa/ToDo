class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content])
    if @post.save
      flash[:notice] = "タスクを作成しました"
      redirect_to("/posts/index")
    else
      render("post/new")
    end
  end
end
