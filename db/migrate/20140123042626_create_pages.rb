class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :permalink
      t.text :content
      t.string :page_image

      t.timestamps
    end
    add_index :pages, :permalink
  end
end
