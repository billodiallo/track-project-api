class Api::V1::ProgrammersController < ApplicationController
  def index
    programmers = programmer.all
    render json: programmers, status: 200
  end

  def create
    programmer = Programmer.new(
      name: prog_params[:name],
      brand: prog_params[:email]
    )
    if programmer.save
      render json: programmer, status: 200
    else
      render json: { error: 'Error creating review' }
    end
  end

  
end
