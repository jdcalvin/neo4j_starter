class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_post

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @comment = Comment.create!(comment_params)
    @post.comments << @comment
    @post.save

    if @comment.save
      redirect_to @post, notice: 'Comment was successfully created.'
    else
      render :new
    end
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:author, :email, :content)
    end

    def set_post
      @post = Post.find(params[:post_id])
    end
end
