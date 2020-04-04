class CarnegieCov::Scraper
  
  attr_accessor :category, :exhibit, :camp, :production, :url
  
  def self.scrape_categories
    doc = Nokogiri::HTML(open("http://www.thecarnegie.com/"))
 
    shop = doc.css("div.exhibition")
  end 
  
  def self.scrape_exhibit
    doc = Nokogiri::HTML(open(""))
    
    exhibit = self.new 
    carnegie_exhibit = doc.css("").text.gsub(/\t/, "")
    
    exhibit
  end 
  
  def self.scrape_camp
    doc = Nokogiri::HTML(open(""))
    
    camp = self.new 
    carnegie_camp = doc.css("").text.gsub(/\t/, "")
    camp
  end 
  
  def self.scrape_production
    doc = Nokogiri::HTML(open(""))
    
    production = self.new 
    carnegie_production = doc.css("").text.gsub(/\t/, "")
    
    production
  end 
  
end