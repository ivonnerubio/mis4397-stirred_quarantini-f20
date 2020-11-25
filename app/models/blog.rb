class Blog < ApplicationRecord
    has_many :comments
    validates_presence_of :title
    validates_presence_of :body
    validates_presence_of :author_name
    validates_presence_of :post_type
    
end
