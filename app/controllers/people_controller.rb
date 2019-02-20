class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @people = People.find(params[:id])
  end

  def new
    @people = People.new
  end

  def create
    @people = Person.new(page_params)

    if @people.save
      redirect_to page_path
    else
      render :new
    end
  end
end

private

  def page_params
    params.require(:person).permit(:full_name, :gender, :age)
  end