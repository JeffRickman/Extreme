class Post < ApplicationRecord
  #add validation to the  title entered
  validates :title, presence:true, length: {minimum:5}
end
