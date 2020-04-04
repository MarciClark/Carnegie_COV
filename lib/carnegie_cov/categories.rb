class CarnegieCov::Categories
  
  attr_accessor :name, :performances, :exhibits
  @@all = []
   
  def initialize(name)
    @name = name
    @performances = []
    @exhibits = []
    save
  end 
 
  def self.all
    CarnegieCov::Scraper.categories if @@all.empty?
    @@all
  end
  
  def get_performances
    CarnegieCov::Scraper.scrape_performances(self) if @performances.empty?
  end
  
  def get_exhibits 
    CarnegieCov::Scraper.scrape_exhibits(self) if @exhibits.empty?
  end 
  
  def save
    @@all << self
  end
end 