class Lists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string "title"
      t.boolean "status"
      t.timestamps
    end
  end
end
