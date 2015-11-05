class ChangeRatings < ActiveRecord::Migration
    rename_column :ratings, :rating_info_id, :ratingable_id
    rename_column :ratings, :rating_info_type, :ratingable_type
end
