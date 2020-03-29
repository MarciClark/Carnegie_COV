class CarnegieCov::CLI 
  
  @@muted="\e[1;31m"
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
  def call 
    list_categories 
    user_input
    goodbye
  end 
  
  def list_categories
    puts "\n#{@@blu}Welcome to The Carnegie Covington!#{@@white}\n"
  end 
  
end 
  