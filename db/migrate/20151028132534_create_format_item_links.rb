class CreateFormatItemLinks < ActiveRecord::Migration
  def change
    create_table :format_item_links do |t|
      t.references :format_item, index: true
      t.references :dim_format, index: true
      t.references :dim_item, index: true
      t.string :indeling_code
      t.integer :versie_nummer
      t.string :indeling_item_sleutel
      t.string :dimensie_code
      t.string :dimensie_item_sleutel_van
      t.string :dimensie_item_sleutel_tot
      t.string :dimensie_item_sleutel_van_sort
      t.string :dimensie_item_sleutel_tot_sort
      t.integer :is_range
      t.string :userid_inserted
      t.date :datum_inserted
      t.string :userid_updated
      t.date :datum_updated

      t.timestamps
    end
  end
end
