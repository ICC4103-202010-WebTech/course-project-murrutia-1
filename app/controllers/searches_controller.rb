class SearchesController < ApplicationController

  def new
    @search = Search.new
  end

  def create
    @searchh = Search.new
    @search = Search.create!(params[:search].permit(:keyword))
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @searchh = Search.new
  end

end
