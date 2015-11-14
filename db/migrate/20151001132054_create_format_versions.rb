class CreateFormatVersions < ActiveRecord::Migration
  def change
    create_table :format_versions do |t|
      t.string :indeling_code
      t.references :format, index: true
      t.integer :versie_nummer
      t.string :versie_naam
      t.string :huidig_ind
      t.date :geldig_van_datum
      t.date :geldig_tot_datum
      t.string :userid_inserted
      t.date :datum_inserted
      t.string :userid_updated
      t.date :datum_updated

      t.timestamps
    end
  end
end
