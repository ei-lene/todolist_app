class TasksController < ApplicationController
  
  def new  
    @task = Task.new    
  end

  def create  
    @task = Task.new(params[:task])
    # raise params.inspect
    # raise @task.persons.inspect
    # params[:task][:person_ids].each do |person_id|
    #   @task.task_assignments.build(:person_id => person_id)
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
