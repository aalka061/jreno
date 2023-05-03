class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :type
      t.references :person, null: false, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
