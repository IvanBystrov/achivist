ActiveAdmin.register FileRecord do
   config.per_page = 5 

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
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
  permit_params :description, :attachment

  form :html => { :enctype => "multipart/form-data" } do |f| # <--- changed
    f.inputs "File details" do
      f.input :description
      f.input :attachment, as: :file 
    end
    f.actions
  end
end


