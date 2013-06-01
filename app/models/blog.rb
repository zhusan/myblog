class Blog < ActiveRecord::Base
   attr_accessible :title, :content,:user_id
   belongs_to :user
   has_many :comments

   validates :title, :content, :presence => true
   validates :title, :uniqueness => {:allow_blank => true}
end
