class ClubsController < ApplicationController
before_action :authenticate

  def index
    @clubs = Club.all
  end

  def show
    @club = Club.find(params[:id])
    unless current_student.clubs.include?(@club)
      render 'public/403.html'
    end
  end




end
