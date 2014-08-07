class ScriptsController < ApplicationController
  before_action :load_script, except: %w( index new create )
  before_action :authenticate_user!, except: %w( index show )

  def index
    @scripts = Script.search( params[:keyword] ).order( updated_at: :desc ).page( params[:page] ).per( 5 )
  end

  def show
  end

  def new
    render :show_modal_form
  end

  def create
    @script = Script.new( script_params )
    @result = @script.save
    @script = nil unless @result
    flash[:notice] = '登録しました。' if @result
  end

  def edit
    render :show_modal_form
  end

  def update
    @result = @script.update( script_params )
    @script = nil unless @result
    flash[:notice] = '更新しました。' if @result
  end

  def delete
    render :show_modal_delete
  end

  def destroy
    @result = @script.destroy
    @script = nil unless @result
    flash[:notice] = '削除しました。' if @result
    flash[:alert] = '削除できませんでした。' unless @result
    render :reload
  end

  private

  def load_script
    @script = Script.id_is( params[:id] ) if params[:id]
  end

  def script_params
    params.require( :script ).permit( :user_id, :name, :github, :description )
  end
end
