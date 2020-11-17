class Blog < ApplicationRecord
    has_many :comments
    validates_presence_of :post_title
    validates_presence_of :text
    validates_presence_of :author_name
    validates_presence_of :authorID
    validates_presence_of :year
    validates_presence_of :post_type
    
end
