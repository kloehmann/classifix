class SystemController < ApplicationController
    #list all systems
    def index
        @sys = System.all
    end
    
    #show a system
    def show
        @sys = System.find(params[:id])
    end
    
    #generate a new system object
    def new
        @sys = System.new
    end
    
    #create a new system and redirect
    def create
        @sys = System.new(system_params)
       
        if @sys.save
          redirect_to classification_path(@sys.id)
        else
          render 'new'
        end
    end
    
    #this is a definition for the allowed parameters entered to the program
    private
    def system_params
        params.require(:system).permit(:name)
    end
end
