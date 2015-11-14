class CreateFormatItems < ActiveRecord::Migration
  def change
    create_table :format_items do |t|
      t.string :indeling_code
      t.integer :versie_nummer
      t.references :format_version, index: true
      t.string :item_sleutel
      t.integer :nivo_aantal
      t.string :nivo1_code
      t.string :nivo1_omschrijving
      t.string :nivo2_code
      t.string :nivo2_omschrijving
      t.string :nivo3_code
      t.string :nivo3_omschrijving
      t.string :nivo4_code
      t.string :nivo4_omschrijving
      t.string :nivo5_code
      t.string :nivo5_omschrijving
      t.string :nivo6_code
      t.string :nivo6_omschrijving
      t.string :userid_inserted
      t.date :datum_inserted
      t.string :userid_updated
      t.date :datum_updated

      t.timestamps
    end
  end
end
