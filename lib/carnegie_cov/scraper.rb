class CarnegieCov::Scraper
  
  attr_accessor :category, :exhibit, :performance, :url
  
  def self.categories
    doc = Nokogiri::HTML(open("https://sprudge.com/a-coffee-drinkers-guide-to-cincinnati-141292.html"))
 
    shop = doc.css("p.strong")
  end 
  
  def self.scrape_exhibit
    doc = Nokogiri::HTML(open("https://twodrifters.us/blog/best-coffee-shops-in-cincinnati-ohio.html"))
    
    exhibit = self.new 
    carnegie_exhibit = doc.css("div.arconix-box.arconix-box-gray").text.gsub(/\t/, "")
    
    exhibit
  end 
  
  def self.scrape_performance
    doc = Nokogiri::HTML(open("https://twodrifters.us/blog/best-coffee-shops-in-cincinnati-ohio.html"))
    
    performance = self.new 
    carnegie_performance = doc.css("div.arconix-box.arconix-box-gray").text.gsub(/\t/, "")
    
    performance
  end 
  
end