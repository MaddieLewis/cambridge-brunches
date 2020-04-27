class CollegesController < ApplicationController
  before_action :set_college, only: %i[show edit update]
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
    @colleges = College.all
  end

  def show
  end


# need to add admin control so only admin can edit and update colleges
  def edit
  end

  def update
    if @college.update(college_params)
      redirect_to college_path(@college)
    else
      render :edit
    end
  end

  private

  def set_college
    @college = College.find(params[:id])
  end

  def college_params
    params.require(:college).permit(:cost, :our_review, :star_quote, :rating, :picture_url)
  end
end
