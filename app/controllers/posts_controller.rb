class PostsController < ApplicationController
  def index
    if params[:query].present?
      @posts = Post.where("title LIKE ?", "%#{params[:query]}%")
    else
      @posts = Post.all.order(created_at: :desc)
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, notice: "Post criado!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :image)
  end
end
