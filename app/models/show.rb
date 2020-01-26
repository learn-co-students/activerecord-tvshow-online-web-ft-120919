class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating")
  end #self.highest_rating

  def self.most_popular_show
    max_rating = self.highest_rating
    Show.find_by(rating: max_rating)
  end #self.most_popular_show

  def self.lowest_rating
    Show.minimum("rating")
  end #self.lowest_rating

  def self.least_popular_show
    min_rating = self.lowest_rating
    Show.find_by(rating: min_rating)
  end #self.least_popular_show

  def self.ratings_sum
    Show.sum("rating")
  end #self.ratings_sum

  def self.popular_shows
    Show.where("rating > 5")
  end #self.popular_shows

  def self.shows_by_alphabetical_order
    Show.order(:name, :asc)
  end #self.shows_by_alphabetical_order


end #class