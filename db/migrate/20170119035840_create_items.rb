class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :list_id
      # wiring the scheme - the db - the foreign key
      # wire the model with the association
      t.timestamps
    end
  end
end
