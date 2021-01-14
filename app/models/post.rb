class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 10}
  validates :summary, length: {maximum: 10}
  validates :category, acceptance: { accept: ['TRUE', 'accepted', 'Fiction'] }
  validates :title, acceptance: { accept: ["You Won't Believe These True Facts"] }
end
