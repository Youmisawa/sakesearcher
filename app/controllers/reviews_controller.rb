class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)
    respond_to do |format|
      format.html { redirect_to tweet_path(params[:tweet_id]) }
      format.json
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
