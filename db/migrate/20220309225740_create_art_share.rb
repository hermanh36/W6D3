class CreateArtShare < ActiveRecord::Migration[5.2]
  def change
    create_table :art_shares do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false
    end
    add_index :art_shares, :artwork_id, foreign_key:true
    add_index :art_shares, :viewer_id, foreign_key: true
  end
end
