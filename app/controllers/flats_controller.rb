class FlatsController < ApplicationController
    before_action :find_flat, only: [:edit, :show, :update, :destroy]

    def index()
        @flats = Flat.all
    end

    def create()
        @flat = Flat.new(flat_params)

        if @flat.save
            redirect_to flat_path(@flat)
        else 
            render :new
        end
    end

    def new()
        @flat = Flat.new
    end

    def edit()
    end

    def show()
    end

    def update()
        if @flat.update(flat_params)
            redirect_to flat_path(@flat)
        else
            render :edit
        end
    end

    def destroy()
        @flat.destroy
        @flat.save
        redirect_to flats_path
    end

    private

    def flat_params()
        params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guest)
    end

    def find_flat()
        @flat = Flat.find(params[:id])
    end
    
end
