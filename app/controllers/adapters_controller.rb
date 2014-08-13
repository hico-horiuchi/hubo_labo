class AdaptersController < ApplicationController
  before_action :load_adapter, except: %w( index new create )
  before_action :authenticate_user!, except: %w( index show )

  def index
    @adapters = Adapter.search( params[:keyword] ).order( updated_at: :desc ).page( params[:page] ).per( 5 )
  end

  def show
  end

  def new
    render :show_modal_form
  end

  def create
    @adapter = Adapter.new( adapter_params )
    @result = @adapter.save
    flash[:notice] = '登録しました。' if @result
  end

  def edit
    render :show_modal_form
  end

  def update
    @result = @adapter.update( adapter_params )
    flash[:notice] = '更新しました。' if @result
  end

  def delete
    render :show_modal_delete
  end

  def destroy
    @result = @adapter.destroy
    @adapter = nil unless @result
    flash[:notice] = '削除しました。' if @result
    flash[:alert] = '削除できませんでした。' unless @result
    render :reload
  end

  private

  def load_adapter
    @adapter = Adapter.id_is( params[:id] ) if params[:id]
  end

  def adapter_params
    params.require( :adapter ).permit( :user_id, :name, :github, :description, :service_name, :service_url )
  end
end
