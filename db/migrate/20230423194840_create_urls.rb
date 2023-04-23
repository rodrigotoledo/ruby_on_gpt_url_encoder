class CreateUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :urls do |t|
      t.string :original_url
      t.string :code
      t.integer :clicked, default: 0

      t.timestamps
    end
  end
end
