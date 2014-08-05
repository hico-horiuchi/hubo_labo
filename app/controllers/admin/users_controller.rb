class Admin::UsersController < ApplicationController
  before_action :load_user, except: %w( index )
  before_action :authenticate_user!
  before_action :admin_user!

  def index
    @users = User.search( params[:keyword] ).order( updated_at: :desc ).page( params[:page] ).per( 20 )
  end

  def admin
    @user.admin_flag = true
    @result = @user.save
    @user = nil unless @result
    flash[:notice] = '管理者権限を設定しました。' if @result
    flash[:alert] = '管理者権限を設定できませんでした。' unless @result
    render :reload
  end

  def unadmin
    @user.admin_flag = false
    @result = @user.save
    @user = nil unless @result
    flash[:notice] = '管理者権限を解除しました。' if @result
    flash[:alert] = '管理者権限を解除できませんでした。' unless @result
    render :reload
  end

  private

  def load_user
    @user = User.id_is( params[:id] ) if params[:id]
  end
end
