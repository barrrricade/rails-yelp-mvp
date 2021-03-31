class ReviewsController < ApplicationController

  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_restaurant, only: [:new, :create]

  def index
    @reviews = review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save!
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to reviews_path(@review)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to restaurant_path(@review.restaurant)

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
