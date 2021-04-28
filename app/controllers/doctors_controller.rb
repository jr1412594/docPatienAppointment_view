class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all 
  end
  
  def show
    @doctor = Doctor.find(params[:id])
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.valid?
      @doctor.save
      render('doctors/show')
    else
      render json: :errors
    end
  end

  def update
    @doctor = Doctor.find(params[:id])
    @doctor.update(doctor_params)
    render('doctors/show')
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    render('doctors/show')
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :spec)
  end
end
