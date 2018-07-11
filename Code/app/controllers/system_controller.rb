class SystemController < ApplicationController
    def index
        @sys = System.all
    end
end
