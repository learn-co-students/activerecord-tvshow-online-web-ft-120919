class Show < ActiveRecord::Base

    def self.highest_rating
        #this method should return the highest value in the ratings column. 
        #hint: if there is a minimum Active Record method, might there be a maximum method?

        self.maximum("rating")
    end

    def self.most_popular_show
        self.order(rating: :desc).first
    end

    def self.lowest_rating
        self.minimum("rating")
    end

    def self.least_popular_show
        self.order(rating: :desc).last
    end

    def self.ratings_sum
        self.sum("rating")
    end

    def self.popular_shows
        self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end