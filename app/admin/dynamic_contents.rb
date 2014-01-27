ActiveAdmin.register DynamicContent do

  index do
    selectable_column
    column :key
    column :title
    column :value
    default_actions
  end
  
end
