class TasksController < ApplicationController
  
  def new  
    @task = Task.new    
  end

  def create  
    @task = Task.new(params[:task])
    # raise params.inspect
    # raise @task.users.inspect
    # params[:task][:user_ids].each do |user_id|
    #   @task.task_assignments.build(:user_id => user_id)
    # end

    @task.save
    redirect_to @task.list  
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])

    redirect_to @task.list  
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to @task.list
  end

end
