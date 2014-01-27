class AddDeleteImageToPages < ActiveRecord::Migration
  def change
    add_column :pages, :delete_page_image, :boolean
  end
end
