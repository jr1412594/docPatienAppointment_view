class PatientsController < ApplicationController
    def index
        @patients = Patient.all 
    end

    def show
        @patient = Patient.find(params[:id])
    end

    def create
        @patient = Patient.new(patient_params)
        if @patient.valid?
            @patient.save
            render('patients/show')
        else
            render json: :errors
        end
    end

    def update
        @patient = Patient.find(params[:id])
        @patient.update(patient_params)
        render('patients/show')
    end

    private

    def patient_params
        params.require(:patient).permit(:name, :age, :illness)
    end
end
