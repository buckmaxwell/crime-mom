class PeopleController < ApplicationController


  def show
    @person = Person.find(params[:id])
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render 'new'
    end
  end

  private
  def person_params
    params.require(:person).permit(:first_name, :last_name, :email)
  end

end
