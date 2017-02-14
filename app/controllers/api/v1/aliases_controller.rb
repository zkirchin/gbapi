module Api::V1
  class AliasesController < ApplicationController
    before_action :set_alias, only: [:show, :update, :destroy]

    # GET /aliases
    def index
      @aliases = Alias.all

      render json: @aliases
    end

    # GET /aliases/1
    def show
      render json: @alias
    end

    # POST /aliases
    def create
      @alias = Alias.new(alias_params)

      if @alias.save
        render json: @alias, status: :created, location: @alias
      else
        render json: @alias.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /aliases/1
    def update
      if @alias.update(alias_params)
        render json: @alias
      else
        render json: @alias.errors, status: :unprocessable_entity
      end
    end

    # DELETE /aliases/1
    def destroy
      @alias.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_alias
        @alias = Alias.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def alias_params
        params.require(:alias).permit(:name, :character_id, :divinity_id)
      end
  end
end
