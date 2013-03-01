class ListsController < ApplicationController

  def new  
    @list = List.new
  end

  def create  
    @list = List.new(params[:list])
    @list.save
    redirect_to '/'
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end
  
end
