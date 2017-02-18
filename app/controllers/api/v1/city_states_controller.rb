module Api::V1
  class CityStatesController < ApplicationController
    before_action :set_city_state, only: [:show, :update, :destroy]

    # GET /city_states
    def index
      @city_states = CityState.all

      render json: @city_states
    end

    # GET /city_states/1
    def show
      render json: @city_state
    end

    # POST /city_states
    def create
      @city_state = CityState.new(city_state_params)

      if @city_state.save
        render json: @city_state, status: :created, location: @city_state
      else
        render json: @city_state.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /city_states/1
    def update
      if @city_state.update(city_state_params)
        render json: @city_state
      else
        render json: @city_state.errors, status: :unprocessable_entity
      end
    end

    # DELETE /city_states/1
    def destroy
      @city_state.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_city_state
        @city_state = CityState.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def city_state_params
        params.require(:city_state).permit(:name, :terrain, :population, :currency, :region_id)
      end
  end
end
