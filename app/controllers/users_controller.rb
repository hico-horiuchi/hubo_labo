class UsersController < ApplicationController
  before_action :load_user

  def show
  end

  private

  def load_user
    @user = User.id_is( params[:id] ) if params[:id]
  end
end
