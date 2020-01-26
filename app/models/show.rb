class Show < ActiveRecord::Base
  def self.highest_rating
    most_popular_show.rating
  end

  def self.most_popular_show
    Show.all.max_by { |show| show.rating }
  end

  def self.lowest_rating
    least_popular_show.rating
  end

  def self.least_popular_show
    Show.all.min_by { |show| show.rating }
  end

  def self.ratings_sum
    Show.all.sum { |show| show.rating}
  end

  def self.popular_shows
    Show.all.select { |show| show.rating.to_i > 5 }
  end

  def self.shows_by_alphabetical_order
    Show.all.sort_by { |show| show.name }
  end

end
