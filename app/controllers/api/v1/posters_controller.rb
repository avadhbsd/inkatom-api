
module API  
  module V1
        class PostersController < ApplicationController

        
        before_action :set_poster, only: [:show, :update, :destroy]
        after_filter only: [:index] { set_pagination_header(:posters) }

      # GET /posters
      # GET /posters.json

      def index
        @posters = Poster.includes(:papers).order("id").page params[:page]
        render json: @posters
      end

      # GET /posters/1
      # GET /posters/1.json
      def show
        render json: @poster
      end

      # POST /posters
      # POST /posters.json

      # def new

      #   # @poster = Poster.new(poster_params)

      # end

        def create

        @poster = Poster.new(poster_params)
        
        if @poster.save
          render json: @poster, status: :created, location: @poster
        else
          render json: @poster.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /posters/1
      # PATCH/PUT /posters/1.json
      def update
        @poster = Poster.find(params[:id])

        if @poster.update(poster_params)
          head :no_content
        else
          render json: @poster.errors, status: :unprocessable_entity
        end
      end

      # DELETE /posters/1
      # DELETE /posters/1.json
      def destroy
        @poster.destroy

        head :no_content
      end

      private

        def set_poster
          @poster = Poster.find(params[:id])
        end

        def poster_params
        params[:poster]||= []
        params.require(:poster).permit! #permit(:title, :description) #, :units_in_stock, :credits, :shippingDetails, :productUrl, :price)
        end

    end
  end
end

