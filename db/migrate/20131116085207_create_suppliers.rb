class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :contactname
      t.string :contactphone
      t.string :contactemail
      t.string :paypal
      t.text :blurb
      t.string :type
      t.string :pic1
      t.string :pic2
      t.string :pic3

      t.timestamps
    end
  end
end
