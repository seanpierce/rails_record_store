class ReviewsController < ApplicationController

  before_action :authorize_user, only: [:new]

  def show
    @review = Review.find(params[:id])
    @product = @review.record
  end

  def new
    @record = Record.find(params[:record_id])
    @review = @record.reviews.new
  end

  def create
    @record = Record.find(params[:record_id])
    @review = @record.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review sucessfully created!"
      redirect_to record_path(@record)
    else
      flash[:alert] = "Something went wrong, please try again."
      redirect_to new_record_review_path(@record)
    end
  end

  def edit
    @review = Review.find(params[:id])
    @record = @review.record
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Review successfully updated!"
      redirect_to record_path(@review.record)
    else
      render :edit
    end
  end

  def destroy
    @record = Review.find(params[:id]).record
    if Review.find(params[:id]).destroy
      flash[:notice] = "Review successfully removed!"
     redirect_to record_path(@record)
    end
  end

  private
    def review_params
      params.require(:review).permit(:user_id, :content, :record_id)
    end

end
