ActiveAdmin.register Question do

# See permitted parameters documentation:
# http://bit.ly/1ZWXppB
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  permit_params :title, :image, :image_cache, :publish_datetime
end