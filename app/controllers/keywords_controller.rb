class KeywordsController < ApplicationController

  
  before_action :authenticate_user!, except: :index
  load_and_authorize_resource
  
  def index
    @keywords = Keyword.all
  end

  def edit
    @keyword = Keyword.find(params[:id])
  end

  def show
    @keyword = Keyword.find(params[:id])
  end

  def filter
    @keyword = Keyword.find(params[:keyword_select])
    redirect_to keyword_path(@keyword)
  end

  def update
    keyword = Keyword.find(params[:id])
    keyword.update(keyword_params)
    redirect_to keywords_path
  end

  def new
    @keyword = Keyword.new
  end

  def create
    Keyword.create(keyword_params)
    redirect_to keywords_path
  end

  def destroy
    keyword = Keyword.find(params[:id])
    keyword.destroy
    redirect_to keywords_path
  end

  private

  def keyword_params
    params.require(:keyword).permit(:name)
  end

end
