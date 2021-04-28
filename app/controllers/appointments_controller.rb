class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all 
        # render json: @appointments
    end

    def show
        @appointment = Appointment.find(params[:id])
        render ('appointments/show')
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.valid?
            @appointment.save
            render('appointments/show')
        else
            render json: :errors
        end
    end

    private

    def appointment_params
        params.require(:appointment).permit(:doctor_id, :patient_id)
    end
end
