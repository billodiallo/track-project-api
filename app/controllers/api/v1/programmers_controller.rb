class Api::V1::ProgrammersController < ApplicationController
  def index
    programmers = programmer.all
    render json: programmers, status: 200
  end

  def show
  end
end
