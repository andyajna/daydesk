class AddFoodToSuppliers < ActiveRecord::Migration
  def change
  	add_column :suppliers, :coffee, :boolean
  	add_column :suppliers, :coffeedesc, :string
  	add_column :suppliers, :food, :boolean
  	add_column :suppliers, :fooddesc, :string
  	add_column :suppliers, :alcohol, :boolean
  	add_column :suppliers, :alcoholdesc, :string
  end
end
