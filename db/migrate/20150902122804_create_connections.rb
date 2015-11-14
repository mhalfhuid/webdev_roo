class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :key
      t.string :dsn
      t.string :userid
      t.string :password
      t.string :range
      t.string :query
      t.string :indeling_code
      t.string :dimensie_code
      t.string :userid_inserted
      t.date :datum_inserted
      t.string :userid_updated
      t.date :datum_updated

      t.timestamps
    end
  end
end
