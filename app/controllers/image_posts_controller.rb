class ImagePostsController < ApplicationController
  def new
    @image_post = ImagePost.new
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
    ImagePost.new(image_post_params)
  end

  def image_post_params
    params.require(:image_post).permit(:content)
  end
end
