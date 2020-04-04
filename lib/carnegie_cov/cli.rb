class CarnegieCov::CLI 
  
  @@muted="\e[1;31m"
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
  def call 
    list_categories
    get_categories
    user_input
    goodbye
  end 
  
  def list_categories
    puts "\n#{@@blu}Welcome to The Carnegie Covington!#{@@white}\n"
  end 
  
  def get_categories
    @categories = CarnegieCov::Categories.all
  end 
  
  def user_input
    input = nil 
    while input != "exit"
      puts "\n#{@@grn}Which would you like more info on?\n#{@@white}"
      input = gets.strip.downcase 
      
      if input.to_i > 0 
        shops = @shops[input.to_i-1]
        puts "#{@address}"
        #puts "#{@shop.address}"
      elsif input == "categories"
        list_shops
      else 
        puts "I'm sorry, I do not recognize your response"
      end 
    end 
  end 
  
  def goodbye
    puts "Have a beautiful day!"
  end 
  
end 
  