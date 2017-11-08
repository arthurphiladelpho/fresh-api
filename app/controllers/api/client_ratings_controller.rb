class Api::ClientRatingsController < ApiController

	before_action :authenticated?

	def index
  	client_ratings = ClientRating.all
  	render json: client_ratings, each_serializer: ClientRatingSerializer
  end

  def create
  	client_rating = ClientRating.new(client_rating_params)
  	if client_rating.save
  		render json: client_rating
  	else
  		render json: {errors: client_rating.errors.full_messages}, status: :unprocessable_entity
  	end
  end

  def destroy
  	begin
      client_rating = ClientRating.find(params[:id])
      client_rating.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end


 	private
  
  def client_rating_params
    params.require(:client_rating).permit(:client_id, :worker_id, :rating, :comments)
  end

end