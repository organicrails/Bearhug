class ChangePriceTypeInHugs < ActiveRecord::Migration
  def self.up
    change_column :hugs, :price, :integer
  end
 
  def self.down
    change_column :hugs, :price, :demcimal
  end
end
