class PatientsController < ApplicationController

    def show
        @patient = Patient.find_by(params[:id])
        # byebug
    end
   
    def index
        @patients = Patient.all
    end

    private

    def patient_params
        params.require(:patient).permit(:name, :age)
    end

end