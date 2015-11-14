class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.string :indeling_code
      t.string :indeling_naam
      t.string :indeling_omschrijving
      t.string :bron_naam
      t.string :userid_inserted
      t.date :datum_inserted
      t.string :userid_updated
      t.date :datum_updated

      t.timestamps
    end
  end
end
