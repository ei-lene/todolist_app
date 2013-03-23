class ListsController < ApplicationController
  before_filter :logged_in?, except: [:index, :show]

  def new  
    @list = List.new
  end

  def create  
    @list = List.new(params[:list])
    @list.permalink = @list.name.downcase.gsub(" ","-")
    @list.save
    
    redirect_to list_path(@list)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find_by_permalink(params[:id])

    @task = Task.new
    @task.list_id = @list.id

  end

  def destroy
    @list = List.find_by_permalink(params[:id])
    @list.destroy
    redirect_to '/'
  end

  def edit
    @list = List.find_by_permalink(params[:id])
  end

  def update
    @list = List.find_by_permalink(params[:id])
    @list.update_attributes(params[:list])

    redirect_to list_path
  end
  
end
