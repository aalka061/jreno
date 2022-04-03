class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :title
      t.string :main_image_url
      t.string :image_1_url
      t.string :image_2_url
      t.string :image_3_url
      t.string :image_4_url
      t.string :image_5_url
      t.string :image_6_url
      t.text :description
      t.references :service

      t.timestamps
    end
  end
end
