class RecommendationController < ApplicationController
  def show
    @outline_items = OutlineItem.all
    system_id = params[:id]
    @system = System.find(system_id)
    @classifications = Classification.where(system: @system).pluck(:outline_item_id)
    @recommendations = Recommendation.all
  end
end
