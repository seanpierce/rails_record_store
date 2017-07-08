class ReviewsController < ApplicationController

  def new
    @record = Record.find(params[:record_id])
    @review = @record.reviews.new
  end

  def create
    @record = Record.find(params[:record_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review sucessfully created!"
      redirect_to record_path(@record)
    else
      flash[:alert] = "Something went wrong, please try again."
      record_path(@record)
    end
  end

  private
    def review_params
      params.require(:review).permit(:user_id, :content, :record_id)
    end

end
