module Api::V1
  class DivinitiesController < ApplicationController
    before_action :set_divinity, only: [:show, :update, :destroy]

    # GET /divinities
    def index
      @divinities = Divinity.all

      render json: @divinities
    end

    # GET /divinities/1
    def show
      render json: @divinity
    end

    # POST /divinities
    def create
      @divinity = Divinity.new(divinity_params)

      if @divinity.save
        render json: @divinity, status: :created, location: @divinity
      else
        render json: @divinity.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /divinities/1
    def update
      if @divinity.update(divinity_params)
        render json: @divinity
      else
        render json: @divinity.errors, status: :unprocessable_entity
      end
    end

    # DELETE /divinities/1
    def destroy
      @divinity.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_divinity
        @divinity = Divinity.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def divinity_params
        params.require(:divinity).permit(:name, :ideology)
      end
  end
end
