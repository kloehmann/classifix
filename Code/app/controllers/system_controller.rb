class SystemController < ApplicationController
    def index
        @sys = System.all
    end
    
    def show
        @sys = System.find(params[:id])
    end

    def new
        @sys = System.new
    end

    def create
        @sys = System.new(system_params)
       
        if @sys.save
          redirect_to @sys
        else
          render 'new'
        end
    end

    private
    def system_params
        params.require(:system).permit(:name)
    end
end
