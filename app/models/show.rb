class Show < ActiveRecord::Base

    # private

    def highest_rating
        self.maximum(:rating)
    end
end

