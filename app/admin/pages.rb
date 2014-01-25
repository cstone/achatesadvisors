ActiveAdmin.register Page do
  controller do
    defaults :finder => :find_by_permalink
  end

  index do
    selectable_column
    column :name
    column :permalink
    column :content
    column :page_image
    default_actions
  end
end
