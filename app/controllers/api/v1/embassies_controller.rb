class Api::V1::EmbassiesController < ApplicationController
  before_action :set_embassy, only: %i[show update destroy book_appointment]

  # GET /api/v1/embassies
  def index
    @embassies = if params[:continent].present?
                   Embassy.where(continent: params[:continent])
                 else
                   Embassy.all
                 end

    render json: @embassies
  end

  # GET /api/v1/embassies/1
  def show
    render json: @embassy
  end

  # POST /api/v1/embassies
  def create
    @embassy = Embassy.new(embassy_params)

    if @embassy.save
      render json: @embassy, status: :created
    else
      render json: @embassy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/embassies/1
  def update
    if @embassy.update(embassy_params)
      render json: @embassy
    else
      render json: @embassy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/embassies/1
  def destroy
    @embassy.destroy
    head :no_content
  end

  # POST /api/v1/embassies/1/book_appointment
  def book_appointment
    appointment_date = calculate_appointment_date
    @appointment = @embassy.embassy_appointments.create(user: current_user, appointment_date:)
    render json: @appointment, status: :created
  end

  private

  def set_embassy
    @embassy = Embassy.find(params[:id])
  end

  def embassy_params
    params.require(:embassy).permit(:country, :name, :location, :appointment_date)
  end

  def calculate_appointment_date
    # Define the number of days for the appointment window
    appointment_window = (2..4)

    # Calculate the earliest and latest valid appointment dates
    earliest_date = appointment_window.first.business_days.from_now
    appointment_window.last.business_days.from_now

    # Find the first valid business day within the window
    valid_date = earliest_date
    valid_date = valid_date.next_day until valid_date.on_weekday?

    valid_date
  end
end
