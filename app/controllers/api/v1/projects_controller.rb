class Api::V1::ProjectsController < ApplicationController
  respond_to :json

  def index
    respond_with Project.all
  end

  def show
    respond_with Project
  end

  def create
    respond_with :api, :v1, Project.create(Project_params)
  end

  def update
    respond_with Project.update(Project_params)
  end

  def destroy
    respond_with Project.destroy
  end

  private

  def Project
    Project.find(params[:id])
  end

  def Project_params
    params.require(:Project).permit(:name, :description)
  end

end