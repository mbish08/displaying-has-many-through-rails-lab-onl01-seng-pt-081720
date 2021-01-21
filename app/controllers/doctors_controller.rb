class DoctorsController < ApplicationController

    def show
        # byebug
        @doctor = Doctor.find_by(params[:id])
        # byebug
    end

    def index
        @doctors = Doctor.all
    end
    
    private

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end

end 