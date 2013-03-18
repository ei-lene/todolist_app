class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show  
  end

  def new
    @person = Person.new
  end

  def create
    redirect to "/people/index"
  end

  def update
  end

  def edit
  end

  def delete
  end
end
