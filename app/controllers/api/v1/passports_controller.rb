class Api::V1::PassportsController < ApplicationController
  before_action :set_user
  before_action :set_passport, only: %i[show update]

  def index
    @passports = @user.passports
    render json: @passports
  end

  def create
    @passport = @user.passports.create(passport_params)
    render json: @passport
  end

  def show
    render json: @passport
  end

  def update
    @passport.update(passport_params) if params[:passport_details].present?
    render json: @passport
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_passport
    @passport = @user.passports.find(params[:id])
  end

  def passport_params
    params.require(:passport).permit(:passport_number, :issue_date, :expiration_date, :country)
  end
end
