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

  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    @tool.update(tool_params)

    redirect_to tool_path(@tool)
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :price, :description, :availability, :picture_url )
  end

end
