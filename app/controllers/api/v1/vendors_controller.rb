class Api::V1::VendorsController < ApplicationController
  def index
    vendors = Vendor.order('created_at DESC')
    render json: { status: 'SUCCESS', message: 'Loaded vendorss', data: vendors }, status: :ok
  end

  def create
    programmer_id = params[:programmer_id]
    project_id = params[:project_id]

    vendor = Vendor.create(programmer_id: programmer_id, project_id: project_id)
    render json: { status: 'SUCCESS', message: 'Assigned programmer', data: vendor }, status: :ok
  end

  def show
    vendor2 = Vendor.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded assignment', data: vendor2 }, status: :ok
  end

  def destroy
    vendor3 = Vendor.find(params[:id])
    vendor3.destroy
    render json: { status: 'SUCCESS', message: 'Removed programmer', data: vendor3 }, status: :ok
  end
end
