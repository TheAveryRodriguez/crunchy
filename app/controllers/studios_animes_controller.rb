class StudiosAnimesController < ApplicationController
  def index
    @studio = Studio.find(params[:id])
    @anime = @studio.animes
  end
end
