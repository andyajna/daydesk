class AddWifiToSuppliers < ActiveRecord::Migration
  def change
  	add_column :suppliers, :wifi, :boolean
  	add_column :suppliers, :wifilimit, :string
  	add_column :suppliers, :printing, :boolean
  	add_column :suppliers, :printingdesc, :string
  	add_column :suppliers, :sendfax, :boolean
  	add_column :suppliers, :receivefax, :boolean
  	add_column :suppliers, :reception, :string
  end
end
