class Api::V1::ProgrammersController < ApplicationController
  def index
    programmers = Programmer.all
    render json: programmers, status: 200
  end

  def create
    programmer = Programmer.new(
      name: prog_params[:name],
      email: prog_params[:email]
    )
    if programmer.save
      render json: programmer, status: 200
    else
      render json: { error: 'Error creating review' }
    end
  end

  def show
    programmer = programmer.find_by(id: params[:id])
    if programmer
      render json: programmer, status: 200
    else
      render json: { error: 'programmer not Found' }

    end
  end

  private

  def prog_params
    params.require(:programmer).permit(%i[
                                      name
                                      email
                                    ])
  end
end

