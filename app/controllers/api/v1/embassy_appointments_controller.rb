class Api::V1::EmbassyAppointmentsController < ApplicationController
  before_action :set_embassy_appointment, only: %i[show update destroy]

  # GET /api/v1/embassy_appointments
  def index
    @embassy_appointments = EmbassyAppointment.all
    render json: @embassy_appointments
  end

  # GET /api/v1/embassy_appointments/1
  def show
    render json: @embassy_appointment
  end

  # POST /api/v1/embassy_appointments
  def create
    user = User.find(params[:user_id])
    embassy = Embassy.find(params[:embassy_id])

    @embassy_appointment = embassy.embassy_appointments.build(
      user:,
      appointment_date: embassy_appointment_params[:appointment_date]
    )

    if @embassy_appointment.save
      render json: @embassy_appointment, status: :created
    else
      render json: @embassy_appointment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/embassy_appointments/1
  def update
    if @embassy_appointment.update(embassy_appointment_params)
      render json: @embassy_appointment
    else
      render json: @embassy_appointment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/embassy_appointments/1
  def destroy
    @embassy_appointment.destroy
    head :no_content
  end

  private

  def set_embassy_appointment
    @embassy_appointment = EmbassyAppointment.find(params[:id])
  end

  def embassy_appointment_params
    params.require(:embassy_appointment).permit(:appointment_date)
  end
end
