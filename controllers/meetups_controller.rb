class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
  end

  def new
    @meetup = Meetup.new
  end

  def show
    @meetup = Meetup.find(params[:id])
  end

  def edit
    @meetup = Meetup.find(params[:id])
  end

  def create
    @meetup = Meetup.new(meetup_params)

    if @meetup.save
      redirect_to meetups_path, notice: 'New meetup was successfully added'
    end
  end

  def update
    @meetup = Meetup.find(params[:id])

    if @meetup.update(meetup_params)
      redirect_to meetups_path, notice: 'Meetup was successfully updated'
    end
  end

  private

  def meetup_params
    params.require(:meetup).permit(:name)
  end

end
