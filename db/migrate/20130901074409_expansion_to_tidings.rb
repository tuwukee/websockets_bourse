class ExpansionToTidings < ActiveRecord::Migration
  def change
    add_column :tidings, :name, :string
    add_column :tidings, :amount, :integer
  end
end
