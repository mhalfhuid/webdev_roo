class CreateDimensions < ActiveRecord::Migration
  def change
    create_table :dimensions do |t|
      t.string :dimensie_code
      t.string :dimensie_naam
      t.string :dimensie_omschrijving
      t.string :bron_type
      t.string :bron_naam
      t.string :doeltabel_naam
      t.string :wijzig_ind
      t.string :dimensie_item_num_ind
      t.string :userid_inserted
      t.date :datum_inserted
      t.string :userid_updated
      t.date :datum_updated

      t.timestamps
    end
  end
end
