# frozen_string_literal: true

module Api
  module V1
    class ProgrammersController < ApplicationController
      def index
        programmers = Programmer.order('created_at DESC')
        render json: { status: 'SUCCESS', message: 'Loaded programmers', data: programmers }, status: :ok
      end

      def show
        programmer = Programmer.find(params[:id])
        render json: { status: 'SUCCESS', message: 'Loaded programmer', data: programmer }, status: :ok
      end

      def create
        programmer = Programmer.new(programmer_params)

        if programmer.save
          render json: { status: 'SUCCESS', message: 'Saved programmer', data: programmer }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Programmer not saved', data: programmer.errors },
                 status: :unprocessable_entity
        end
      end

      def destroy
        programmer = Programmer.find(params[:id])
        programmer.destroy
        render json: { status: 'SUCCESS', message: 'Deleted programmer', data: programmer }, status: :ok
      end

      def update
        programmer = Programmer.find(params[:id])
        if programmer.update(programmer_params)
          render json: { status: 'SUCCESS', message: 'Updated programmer', data: programmer }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Programmer not updated', data: programmer.errors },
                 status: :unprocessable_entity
        end
      end

      private

      def programmer_params
        params.permit(:name, :email)
      end
    end
  end
end
