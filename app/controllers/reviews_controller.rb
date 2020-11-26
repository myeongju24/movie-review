class ReviewsController < ApplicationController

  before_action :find_review, only: [:show, :destroy, :edit, :update]

  def index
    @reviews = Review.order("created_at DESC")
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    if current_user == @review.user
      @review.destroy
      redirect_to root_path
    end
  end

  def edit
    unless current_user == @review.user
      redirect_to root_path
    end
  end

  def update
    if @review.update(review_params)
       redirect_to review_path
    else
      render :edit
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :points_id, :summary, :contents, :image).merge(user_id: current_user.id)
  end

  def find_review
    @review = Review.find(params[:id])
  end  

end
