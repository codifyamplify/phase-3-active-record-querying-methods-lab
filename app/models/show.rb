class Show < ActiveRecord::Base
    # class methods to add
        # highest_rating use a maximum method
    def self.highest_rating
        self.maximum(:rating)
    end
        # most_popular_show
    def self.most_popular_show
        self.where("rating = ?", self.highest_rating).first

    end
        # lowest_rating
    def self.lowest_rating
        self.minimum(:rating)
    end
        # least_popular_show
    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end
        # ratings_sum = returns the sum of all the ratings of all the tv shows (FAILED - 1)
    def self.ratings_sum
        self.sum(:rating)
    end
        # popular_shows = returns an array of all shows with a rating of 5 stars
    def self.popular_shows
        self.where("rating >= ?", 5)
    end
        # show_by_alphabetical_order
    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end