class CreateBourses < ActiveRecord::Migration
  def change
    create_table :bourses do |t|
      t.boolean  :bourse_status, :default => :true
      t.timestamps
    end
    add_index(:bourses, :bourse_status, :unique => true)
  end
end
