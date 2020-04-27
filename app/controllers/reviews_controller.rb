class ReviewsController < ApplicationController
  before_action :set_review, only: %i[destroy edit update]
  # skip_before_action :authenticate_user!, only: %i[show index]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @college = College.find(params[:college_id])
    @review.college = @college
    if @review.save
      redirect_to college_path(@college)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to colleges_path
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to colleges_path
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :description, :rating)
  end

end
