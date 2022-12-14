class UsersController < ApplicationController
  def show
    #TODO: Not quite sure why 'format' is allowing the id to be used and 'id'is not.
    @user = User.find(params[:format])
  end
end
