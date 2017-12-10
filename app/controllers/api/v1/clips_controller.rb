class Api::V1::ClipsController < ApplicationController
  respond_to :json

  def index
    respond_with Clip.all
  end
end
