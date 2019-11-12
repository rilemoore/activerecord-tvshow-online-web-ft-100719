class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    self.find_by(rating: self.highest_rating)
  end
  
  def self.lowest_rating
    self.minimum(:rating)
  end
  
  def self.least_popular_show
    self.order("rating ASC").first
  end
  
  def self.ratings_sum
    self.sum("rating")
  end
  
  def self.popular_shows
    
  end
  
  def self.shows_by_alphabetical_order
    
  end
  
end