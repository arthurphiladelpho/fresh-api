class Api::WorkerRatingsController < ApiController
  before_action :authenticated?

  def index
    worker_ratings = WorkerRating.all
    render json: worker_ratings, each_serializer: WorkerRatingSerializer
  end

  def create
    worker_rating = WorkerRating.new(worker_rating_params)
    if worker_rating.save
      render json: worker_rating
    else
      render json: { errors: worker_rating.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    worker_rating = WorkerRating.find(params[:id])
    worker_rating.destroy
    render json: {}, status: :no_content
  rescue ActiveRecord::RecordNotFound
    render json: {}, status: :not_found
  end

  private

  def worker_rating_params
    params.require(:worker_rating).permit(:worker_id, :client_id, :rating, :comments)
  end
end
