# Load Outline Items
seed_file = Rails.root.join('db', 'seeds', 'outline_items.yaml')
outline_data = YAML::load_file(seed_file)
outline_data.each do |outline_item|
  if outline_item.has_key?("parent")
    puts "Create OutlineItem #{outline_item["key"]}"
    parent = OutlineItem.where(key: outline_item["parent"]).take
    OutlineItem.create(key: outline_item["key"], parent: parent, label: outline_item["label"], description: outline_item["description"])
  else
    puts "Create Topic #{outline_item["key"]}"
    OutlineItem.create(key: outline_item["key"], label: outline_item["label"], description: outline_item["description"])
  end
end

# Load recommendations
seed_file = Rails.root.join('db', 'seeds', 'recommendations.yaml')
recommendation_data = YAML::load_file(seed_file)
recommendation_data.each do |recommendation|
  puts "Create Recommendation #{recommendation["title"]}"
  outline_item = OutlineItem.where(key: recommendation["outline_item"]).take
  Recommendation.create(title: recommendation["title"], implications: recommendation["implications"], goal: recommendation["goal"], generalrecommendation: recommendation["generalrecommendation"], testguidance: recommendation["testguidance"], outline_item: outline_item)
end
