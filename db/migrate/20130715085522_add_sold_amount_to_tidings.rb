class AddSoldAmountToTidings < ActiveRecord::Migration
  def change
    add_column :tidings, :sold_amount, :integer
  end
end
