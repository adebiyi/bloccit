class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :severity
      t.integer :rating_info_id
      t.string :rating_info_type

      t.timestamps null: false
    end
  end
end
