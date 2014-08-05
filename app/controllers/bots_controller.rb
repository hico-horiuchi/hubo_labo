class BotsController < ApplicationController
  before_action :load_bot, except: %w( index new create )
  before_action :authenticate_user!, except: %w( index show )

  def index
    @bots = Bot.search( params[:keyword] ).order( updated_at: :desc ).page( params[:page] ).per( 5 )
  end

  def show
  end

  def new
    render :show_modal_form
  end

  def create
    @bot = Bot.new( bot_params )
    @result = @bot.save
    @bot = nil unless @result
    flash[:notice] = '登録しました。' if @result
  end

  def edit
    render :show_modal_form
  end

  def update
    @result = @bot.update( bot_params )
    @bot = nil unless @result
    flash[:notice] = '更新しました。' if @result
  end

  def delete
    render :show_modal_delete
  end

  def destroy
    @result = @bot.destroy
    @bot = nil unless @result
    flash[:notice] = '削除しました。' if @result
    flash[:alert] = '削除できませんでした。' unless @result
    render :reload
  end

  private

  def load_bot
    @bot = Bot.id_is( params[:id] ) if params[:id]
  end

  def bot_params
    params.require( :bot ).permit( :user_id, :name, :github, :description )
  end
end
