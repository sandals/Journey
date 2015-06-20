class TextPostsController < ApplicationController
  def new
    @post = TextPost.new
  end
  
  def create
    postable = build_post
    post = current_user.posts.new(postable: postable)

    if post.save
      redirect_to timeline_path
    else
      flash.now[:error] = 'Yolo'
      render action: 'new'
    end
  end

  private

  def build_post
    TextPost.new(text_post_params)
  end

  def text_post_params
    params.require(:text_post).permit(:title, :body)
  end
end
