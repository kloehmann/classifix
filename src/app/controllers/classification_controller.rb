class ClassificationController < ApplicationController
    def show
        @item = Item.all
        @topic = Topic.all 

        @system_id = params[:id]
        @classification = Classification.where(system: @system_id).pluck(:item_id)
        

    end
        
    def update
        @system_id = params[:id]
        @classification = Classification.where(system: @system_id)
        @classification.each do |c|
            c.destroy
        end

        Item.all.each do |i|
            if params.has_key?(i.key)
                # FIXME There is an error here. The params contain the key "controller", hence controlller will always be selected.
                c = Classification.new(system: System.find(@system_id), item: i)
                c.save
            end
        end
        redirect_to action: "show", id: @system_id
 
    end
end