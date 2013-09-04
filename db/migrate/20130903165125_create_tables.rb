class CreateTables < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :status
      t.integer :position
      t.timestamps
    end
  end
end
