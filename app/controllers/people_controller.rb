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
    @person = Person.new(params[:person])
    # @person.slug = @person.name.downcase.gsub(" ","-")
    @person.save
    redirect to "/people"
  end

  def update
  end

  def edit  
    @person = Person.find(params[:id])
    @person.update_attributes(params[:person])

    redirect_to "/people"
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to "/people"
  end
end
