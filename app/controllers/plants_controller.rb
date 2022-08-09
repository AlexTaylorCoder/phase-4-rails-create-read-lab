class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end
    def show 
        render json: Plant.find(params[:id])
    end
    def create
        plant = Plant.create(getparams)
        render json: plant, status: :created
    end

    private
    def getparams
        params.permit(:name,:image,:price)
    end
end
