class RentalsController < ApplicationController

  # t.date :start_date
  #     t.date :end_date
  #     t.references :user, null: false, foreign_key: true
  #     t.references :tool, null: false, foreign_key: true
  #     t.text :comment

  def new
    @rental = Rental.new
    @tool = Tool.find(params[:tool_id])
  end

  def create
    @tool = Tool.find(params[:tool_id])
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @rental.tool = @tool
    if @rental.save
      redirect_to tool_path(@rental.tool), notice: "Tool rental was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :comment)
  end
end
