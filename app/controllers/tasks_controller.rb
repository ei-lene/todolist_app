class TasksController < ApplicationController
  
  def new  
    @task = Task.new
  end

  def create  
    @task = Task.new(params[:task])
    @task.save

    redirect_to @task.list  
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])

    redirect_to @task.list  

  end

end
