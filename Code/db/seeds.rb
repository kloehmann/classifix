# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
component_types = Topic.create(key: "component_types", label: "Component Types", description: "Components are the physical parts that constitute a system. In our research we found several types of recurring components in the systems. From the security perspective, the available component types provide an indication of possible attack vectors. Regardless of the attack vectors for specific components, generic attack vectors apply to every component type. Furthermore, the more component types are used in a system, the more attack vectors are in the interaction layer amongst them.    There may be compound devices in the system to which several component types apply, in this case, all component types that apply to those devices must be check marked for the respective system.")

sensor = Item.create(key: "sensor", label: "Sensor", description: "Sensors are passive components that signal environmental conditions to the system but do not manip- ulate their environment. Sensors may receive commands e.g. for device configuration.", topic: component_types)