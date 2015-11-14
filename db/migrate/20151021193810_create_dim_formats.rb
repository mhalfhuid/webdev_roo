class CreateDimFormats < ActiveRecord::Migration
  def change
    create_table :dim_formats do |t|
      t.references :dimension, index: true
      t.references :format_version, index: true
      t.string :indeling_code
      t.integer :versie_nummer
      t.string :dimensie_code
      t.string :userid_inserted
      t.date :datum_inserted
      t.string :userid_updated
      t.date :datum_updated

      t.timestamps
    end
  end
end
