class SchedulesController < ApplicationController
  def show
    @schedule = Schedule.find(params[:id])
    @courses = @schedule.courses.sort_by(&:period)
  end

  def new
    @schedule = Schedule.new
    @courses = Course.all.sort_by(&:period)
  end

  def create
    courses = Course.where(id: params[:schedule][:course_ids])
    sparams = schedule_params
    sparams[:courses] = courses
    @schedule = Schedule.new(sparams)
    if @schedule.save
      redirect_to @schedule
    else
      @courses = Course.all.sort_by(&:period)
      render :new
    end
  end

  private

  def schedule_params
    params.require(:schedule).permit(:name, :grade)
  end
end
