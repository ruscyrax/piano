class Api::V1::RecordsController < ApplicationController
  respond_to :json

  def index
    respond_with Record.all
  end

  def create
    respond_with :api, :v1, Record.create(record_params)
  end

  def update
    record = Record.find(params["id"])
    record.update_attributes(record_params)
    respond_with record, json: record
  end

  def destroy
    respond_with Record.destroy(params[:id])
  end

  private

  def record_params
    params.require(:record).permit(:name, :sequence)
  end
end
