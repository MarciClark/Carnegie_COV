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
  
  def self.this_week
    self.scrape_bestsellers
  end 
  
  def self.scrape_bestsellers
    bestsellers = []
    
    bestsellers << self.scrape_fiction
    bestsellers << self.scrape_nonfiction
    bestsellers << self.scrape_childrens
  end 
  
  def self.scrape_fiction
    doc = Nokogiri::HTML(open("https://www.barnesandnoble.com/b/the-new-york-times-bestsellers-hardcover-fiction/_/N-1p3r"))
    
    fiction = self.new 
    title = doc.css("div.product-shelf-title.pr-m").text.gsub(/\t/, "")
    author = doc.css("div.product-shelf-author.contributors").text.gsub(/\t/, "")
    
    fiction
  end 
  
  def self.scrape_nonfiction
    doc = Nokogiri::HTML(open("https://www.barnesandnoble.com/b/the-new-york-times-bestsellers-hardcover-nonfiction/_/N-1p5q"))
    
    nonfiction = self.new
    title = doc.css("div.product-shelf-title.pr-m h3.product-info-title a").text.gsub(/\t/, "")
    author = doc.css("div.product-shelf-author.contributors").text.gsub(/\t/, "")
    
    nonfiction
  end 
  
  def self.scrape_childrens
    doc = Nokogiri::HTML(open("https://www.barnesandnoble.com/b/the-new-york-times-bestsellers-childrens-picture-books/_/N-1p3p"))
    
    childrens = self.new
    title = doc.css("div.product-shelf-title.pr-m").text.gsub(/\t/, "")
    author = doc.css("div.product-shelf-author.contributors").text.gsub(/\t/, "")
    
    childrens
  end 
  
end