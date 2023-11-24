class Api::V1::GuineasController < ApplicationController
  before_action :set_user
  before_action :set_guinea, only: %i[show update destroy]

  def index
    @guineas = @user.guineas
    render json: @guineas
  end

  def create
    @guinea = @user.guineas.create(guinea_params)
    render json: @guinea
  end

  def show
    render json: @guinea
  end

  def update
    @guinea.update(guinea_params)
    render json: @guinea
  end

  def destroy
    @guinea.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_guinea
    @guinea = @user.guineas.find(params[:id])
  end

  def guinea_params
    params.permit(:identification_document, :travel_itinerary)
  end
end
