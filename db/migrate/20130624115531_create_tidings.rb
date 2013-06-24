class CreateTidings < ActiveRecord::Migration
  def change
    create_table :tidings do |t|
      t.integer :item_id
      t.string :kind

      t.timestamps
    end
  end
end
