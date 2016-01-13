class Quote < ActiveRecord::Base
  validates :body, presence: true,  length: {minimum: 5}
  validates :author, presence: true,  length: {minimum: 3}
end
