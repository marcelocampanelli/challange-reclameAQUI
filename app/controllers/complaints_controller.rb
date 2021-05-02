class ComplaintsController < ApplicationController
  def create
    Operations::Create::Company.new.run(complaint_params)
  end

  private

  def complaint_params
    params.require(:complaint).permit(:title, :company, :description, :location)
  end
end
