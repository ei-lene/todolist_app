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

    @task = Task.new
    @task.list_id = @list.id
    
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to '/'
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update_attributes(params[:list])

    redirect_to list_path
  end
  
end
