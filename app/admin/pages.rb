ActiveAdmin.register Page do
  controller do
    defaults :finder => :find_by_permalink
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :permalink
      f.input :content, :input_html => { :class => "tinymce" }
      f.input :page_image
    end
  end

  index do
    selectable_column
    column :name
    column :permalink
    column :content
    column :page_image do |page|
      image_tag(page.page_image)
    end
    default_actions
  end

  show do |page|
    attributes_table do
      row :id
      row :name
      row :permalink
      row :content
      row :page_image do
        image_tag(page.page_image.url)
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
