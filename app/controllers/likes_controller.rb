class LikesController < ApplicationController
  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.like_micropost(@micropost)
    respond_to :js
  end

  def destroy
  end
end
