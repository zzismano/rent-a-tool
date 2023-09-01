class ReviewsController < ApplicationController
  # create_table :reviews do |t|
  #   t.text :content
  #   t.integer :rating
  #   t.references :tool, null: false, foreign_key: true

  def new
    @review = Review.new
    @tool = Tool.find(params[:tool_id])
  end

  def create
    # doesn't need view page

    @review = Review.new(review_params)
    @tool = Tool.find(params[:tool_id])
    @review.tool = @tool
    @review.user = current_user
    if @review.save
      redirect_to tool_path(@tool), notice: "Review was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :tool_id, :user_id)
  end
end
