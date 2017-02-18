module Api::V1
  class PointsOfInterestController < ApplicationController
    before_action :set_point_of_interest, only: [:show, :update, :destroy]

    # GET /points_of_interest
    def index
      @points_of_interest = PointOfInterest.all

      render json: @points_of_interest
    end

    # GET /points_of_interest/1
    def show
      render json: @point_of_interest
    end

    # POST /points_of_interest
    def create
      @point_of_interest = PointOfInterest.new(point_of_interest_params)

      if @point_of_interest.save
        render json: @point_of_interest, status: :created, location: @point_of_interest
      else
        render json: @point_of_interest.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /points_of_interest/1
    def update
      if @point_of_interest.update(point_of_interest_params)
        render json: @point_of_interest
      else
        render json: @point_of_interest.errors, status: :unprocessable_entity
      end
    end

    # DELETE /points_of_interest/1
    def destroy
      @point_of_interest.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_point_of_interest
        @point_of_interest = PointOfInterest.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def point_of_interest_params
        params.require(:point_of_interest).permit(:name, :purpose, :city_state_id)
      end
  end
end
