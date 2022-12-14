class ProfilesController < ApplicationController
  def index
    @user = users
  end
  def users
    query = User.ransack(username_cont: search_query)
    @users = query.result(distice: true)
  end
    def params[:query]
  end
end
