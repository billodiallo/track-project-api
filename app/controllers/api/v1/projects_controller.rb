

module Api
  module V1
    class ProjectsController < ApplicationController
      def index
        projects = Project.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded projects', data:projects},status: :ok
      end

      def show
        project = Project.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded project', data:project},status: :ok
      end

      def create
        project = Project.new(project_params)

        if project.save
          render json: {status: 'SUCCESS', message:'Saved project', data:project},status: :ok
        else
          render json: {status: 'ERROR', message:'project not saved', data:project.errors},status: :unprocessable_entity
        end
      end

      def destroy
        project = Project.find(params[:id])
        project.destroy
        render json: {status: 'SUCCESS', message:'Deleted project', data:project},status: :ok
      end

      def update
        project = Project.find(params[:id])
        if project.update(project_params)
          render json: {status: 'SUCCESS', message:'Updated project', data:project},status: :ok
        else
          render json: {status: 'ERROR', message:'project not updated', data:project.errors},status: :unprocessable_entity
        end
      end

    

      private

      def project_params
        params.permit(:title, :startDate, :deadLineDate, :budget, :programmer_id)
      end
    end
  end
end
