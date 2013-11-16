class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :supplier, index: true
      t.string :desktype
      t.string :deskrate
      t.boolean :wifi
      t.string :wifilimit
      t.boolean :printing
      t.string :printingdesc
      t.boolean :sendfax
      t.boolean :receivefax

      t.timestamps
    end
  end
end
