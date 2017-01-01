class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts.recent_update.paginate(:page => params[:page], :per_page => 5)
  end
end
