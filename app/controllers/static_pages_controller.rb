class StaticPagesController < ApplicationController
  def index
    @schedules = Schedule.all
  end
end
