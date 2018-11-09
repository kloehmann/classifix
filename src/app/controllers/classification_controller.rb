class ClassificationController < ApplicationController
  def show
    @outline_items = OutlineItem.all
    @system_id = params[:id]
    @classifications = Classification.where(system: @system_id).pluck(:outline_item_id)
  end

  def update
    @system_id = params[:id]
    @classification = Classification.where(system: @system_id)
    @classification.each do |c|
      c.destroy
    end

    OutlineItem.all.each do |i|
      if params.has_key?("oi_"+i.key)
        c = Classification.new(system: System.find(@system_id), outline_item: i)
        c.save
      end
    end
    redirect_to action: "show", id: @system_id
  end
end
