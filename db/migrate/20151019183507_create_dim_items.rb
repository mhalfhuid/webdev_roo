class CreateDimItems < ActiveRecord::Migration
  def change
    create_table :dim_items do |t|
      t.string :dimensie_code
      t.references :dimension, index: true
      t.string :item_sleutel
      t.string :item_naam
      t.string :item_omschrijving
      t.string :userid_inserted
      t.string :item_omschrijving
      t.string :userid_inserted
      t.date :datum_inserted
      t.string :userid_updated
      t.date :datum_updated

      t.timestamps
    end
  end
end
