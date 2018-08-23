class TechnicalCharacteristicsController < ApplicationController
    #list all TechnicalCharacteristics
    def index
        @tech = TechnicalCharacteristic.all
    end
    
    #show a TechnicalCharacteristic
    def show
        @tech = TechnicalCharacteristic.find(params[:id])
    end
    
    #generate a new TechnicalCharacteristic object
    def new
        @tech = TechnicalCharacteristic.new
    end
    
    #create a new TechnicalCharacteristic and redirect
    def create
        @tech = TechnicalCharacteristic.new(tech_params)
       
        if @tech.save
          redirect_to @tech
        else
          render 'new'
        end
    end
    
    #this is a definition for the allowed parameters entered to the program
    private
    def tech_params
      params.require(:technical_characteristic).permit(:name)
    end
end
