class TasksController < ApplicationController
  
  def new  
    @task = Task.new    
  end

  def create  
    @task = Task.new(params[:task])
    params[:task][:person_ids].each do |person_id|
      @task.persons.build(:id => person_id)
    end
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

    def potential_assignees
    @task = Task.find(params[:id])
    @task.persons.each do |person|
      Person.all.delete_if{ |p| p.id == person.id}
    end
  end

end
