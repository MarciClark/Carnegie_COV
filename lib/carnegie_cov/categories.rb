class CarnegieCov::Categories
  
  attr_accessor :name, :prodictions, :camps, :exhibits
  @@all = []
   
  def initialize(name)
    @name = name
    @productions = []
    @camps = []
    @exhibits = []
    @@all << self
  end 
 
  def self.all
    CarnegieCov::Scraper.scrape_categories if @@all.empty?
    @@all
  end
  
  def get_productions
    CarnegieCov::Scraper.scrape_productions(self) if @prodictions.empty?
  end
  
  def get_camp
    CarnegieCov::Scraper.scrape_camps(self) if @camps.empty?
  end
  
  def get_exhibits 
    CarnegieCov::Scraper.scrape_exhibits(self) if @exhibits.empty?
  end 
  
end 