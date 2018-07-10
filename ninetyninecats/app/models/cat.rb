class Cat < ApplicationRecord 
  
  validates :birth_date, :color, :name, presence: true 
  validates :sex, presence: true, inclusion: {in: ["M", "F"]}
  
  COLORS = ["red", "black", "calico", "grey", "white", "blue"]
  
  def age 
    birth_year = self.birth_date.year
    this_year = Date.today.year
    return this_year - birth_year 
  end 
  
  
  
  
  
  
  
  
end 