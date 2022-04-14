class Api::V1::ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects, status: 200
  end

  def create
    project = Project.new(
      title: proj_params[:title],
      startDate: proj_params[:startDate],
      deadLineDate: proj_params[:price],
      budget: proj_params[:budget]
    )
    if project.save
      render json: project, status: 200
    else
      render json: { error: 'Error creating review' }
    end
  end

  def show
    project = Project.find_by(id: params[:id])
    if project
      render json: project, status: 200
    else
      render json: { error: 'project not Found' }

    end
  end

  private

  def proj_params
    params.require(:project).permit(%i[
                                      title
                                      startDate
                                      deadLineDate
                                      budget
                                    ])
  end
end
