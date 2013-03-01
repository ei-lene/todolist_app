class TasksController < ApplicationController
  
  def new  
    @task = Task.new
  end

  def create  
    @task = Task.new(params[:task])
    @task.save
    redirect_to "/lists/#{@task.list_id}"
  end

end
