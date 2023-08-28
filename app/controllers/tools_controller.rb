class ToolsController < ApplicationController

  def show
      @tool = Tool.find([:id])
  end
end
