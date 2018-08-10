class LikesController < ApplicationController
  before_action :require_user_logged_in
  before_action :set_micropost

  def create
    current_user.like_micropost(@micropost)
    respond_to :js
  end

  def destroy
    current_user.unlike_micropost(@micropost)
    respond_to :js
  end

  private
  def set_micropost
    @micropost = Micropost.find(params[:micropost_id])
  end
end
