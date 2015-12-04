module API  
  module V1
    class PapersController < ApplicationController
      before_action :set_paper, only: [:show, :update, :destroy]

      # GET /papers
      # GET /papers.json
      def index
        @papers = Paper.all

        render json: @papers
      end

      # GET /papers/1
      # GET /papers/1.json
      def show
        render json: @paper
      end

      # POST /papers
      # POST /papers.json
      def create
        @paper = Paper.new(paper_params)

        if @paper.save
          render json: @paper, status: :created, location: @paper
        else
          render json: @paper.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /papers/1
      # PATCH/PUT /papers/1.json
      def update
        @paper = Paper.find(params[:id])

        if @paper.update(paper_params)
          head :no_content
        else
          render json: @paper.errors, status: :unprocessable_entity
        end
      end

      # DELETE /papers/1
      # DELETE /papers/1.json
      def destroy
        @paper.destroy

        head :no_content
      end

      private

        def set_paper
          @paper = Paper.find(params[:id])
        end

        def paper_params
          params.require(:paper).permit!#(:paperName, :paerMeta, :aditionalPrice, :poster_id)
        end
    end
  end
end