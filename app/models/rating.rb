class Rating < ActiveRecord::Base

  belongs_to :rating_info, polymorphic: true

  enum severity: [:PG, :PG13, :R ]

  def self.update_rating(rating_string)
    rating_string
  end
end