class ComplaintsController < ApplicationController
  def create
    company = Operations::Create::Company.new.run(complaint_params)
    locale = Operations::Create::Locale.new.run(complaint_params[:location], company[:id])
  end

  private

  def complaint_params
    params.require(:complaint).permit(:title, :company, :description, :location)
  end
end
