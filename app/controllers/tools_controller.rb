class ToolsController < ApplicationController
  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.save
      redirect_to tool_path(@tool), notice: "Tool was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :price, :description, :availability, :picture )
  end
end
