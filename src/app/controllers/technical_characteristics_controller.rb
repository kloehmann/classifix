class TechnicalCharacteristicsController < ApplicationController
    #list all TechnicalCharacteristics
    def index
        @tech = TechnicalCharacteristic.all
        @system_id = params[:system_id]
    end
    
    #show a TechnicalCharacteristic
    def show
        @tech = TechnicalCharacteristic.find(params[:id])
    end
    
    #generate a new TechnicalCharacteristic object
    def new
        @tech = TechnicalCharacteristic.new
        @system_id = params[:system_id]
    end
    
    #create a new TechnicalCharacteristic and redirect
    def create
        @system_id = params[:system_id]

        @tech = TechnicalCharacteristic.new(tech_params)

        print @system_id
        
       
        if @tech.save
          redirect_to technical_characteristics_path(:system_id => @system_id)
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
