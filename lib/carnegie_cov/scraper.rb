class CarnegieCov::Scraper
  
  attr_accessor :category, :exhibit, :camp, :production, :url
 
  
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
    doc = Nokogiri::HTML(open("http://www.thecarnegie.com/exhibition.php"))
    gallery = self.new 
    current_exhibition = doc.css("div.exhibition").text.gsub(/\t/, "")
    
    gallery
  end 
    
  #   url = 'http://www.thecarnegie.com/exhibition.php'
  #   begin
  #     file = open(url)
  #     doc = Nokogiri::HTML(file) do
  #       # handle doc
  #     end
  #   rescue OpenURI::HTTPError => e
  #     if e.message == '404 Not Found'
  #       # handle 404 error
  #     else
  #       raise e
  #     end
  #   end
  # end
  
  def self.scrape_education
    doc = Nokogiri::HTML(open(""))
    
    education = self.new
    summer_camp = doc.css("").text.gsub(/\t/, "")
    
    education
  end 
  
  def self.scrape_theatre
    doc = Nokogiri::HTML(open(""))
    
    theatre = self.new
    current_production = doc.css("").text.gsub(/\t/, "")
    
    theatre
  end 
  
end