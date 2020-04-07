class CarnegieCov::Scraper
  
  # attr_accessor :category, :exhibit, :camp, :production, :url
  
  # def self.scrape_categories
  #   doc = Nokogiri::HTML(open("http://www.thecarnegie.com/"))
 
  #   shop = doc.css("div.exhibition")
  # end 
  
  # def self.scrape_exhibit
  #   doc = Nokogiri::HTML(open(""))
    
  #   exhibit = self.new 
  #   carnegie_exhibit = doc.css("").text.gsub(/\t/, "")
    
  #   exhibit
  # end 
  
  # def self.scrape_camp
  #   doc = Nokogiri::HTML(open(""))
    
  #   camp = self.new 
  #   carnegie_camp = doc.css("").text.gsub(/\t/, "")
  #   camp
  # end 
  
  # def self.scrape_production
  #   doc = Nokogiri::HTML(open(""))
    
  #   production = self.new 
  #   carnegie_production = doc.css("").text.gsub(/\t/, "")
    
  #   production
  # end 
  
  def self.carnegie_programs
    self.scrape_categories
  end 
  
  def self.scrape_categories
    categories = []
    
    categories << self.scrape_gallery
    categories << self.scrape_education
    categories << self.scrape_theatre
  end 
  
  def self.scrape_gallery
    doc = Nokogiri::HTML(open(""))
    
    gallery = self.new 
    current_exhibition = doc.css("").text.gsub(/\t/, "")
    
    gallery
  end 
  
  def self.scrape_education
    doc = Nokogiri::HTML(open(""))
    
    education = self.new
    summer_camp = doc.css("").text.gsub(/\t/, "")
    
    summer_camp
  end 
  
  def self.scrape_theatre
    doc = Nokogiri::HTML(open(""))
    
    theatre = self.new
    current_production = doc.css("").text.gsub(/\t/, "")
    
    current_production
  end 
  
end