class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  self.per_page = 10
  default_scope order: 'microposts.created_at DESC'
end
