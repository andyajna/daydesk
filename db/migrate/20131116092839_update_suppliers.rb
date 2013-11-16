class UpdateSuppliers < ActiveRecord::Migration
  def change
  	rename_column :suppliers, :type, :officetype
  end
end
