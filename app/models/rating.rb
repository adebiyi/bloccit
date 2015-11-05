class Rating < ActiveRecord::Base

  belongs_to :ratingable, polymorphic: true

  enum severity: [:PG, :PG13, :R ]

  def self.update_rating(rating_string)
    unless rating_string.nil? || rating_string.empty?
       rating_severity = rating_string.strip.to_i
       new_severity = Rating.find_or_create_by(severity: rating_severity)
       new_severity
     end
     new_severity
   end
end