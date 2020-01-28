require 'pry'
class Show < ActiveRecord::Base
    def self.highest_rating
        Show.order(rating: :desc).limit(1)[0].rating
    end
    
    def self.most_popular_show
        Show.order(rating: :desc).limit(1)[0]        
    end

    def self.lowest_rating
        Show.order(rating: :asc).limit(1)[0].rating
    end

    def self.least_popular_show
        Show.order(rating: :asc).limit(1)[0]        
    end

    def self.ratings_sum
        sum = 0
        Show.order(:rating).each {|show| sum+=show.rating}
        sum
    end
    def self.popular_shows
        Show.where("rating > 5").order(name: :desc)
    end

    def self.shows_by_alphabetical_order
        Show.order(name: :asc)   
    end
end