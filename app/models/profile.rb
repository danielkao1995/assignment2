class Profile < ActiveRecord::Base
    validates :Name, presence:true
    validates :Description, presence:true
    validates :Country, presence:true
    validates :Color, presence:true
    validates :Age, presence:true
    validates :Weight, presence:true
    validates :Height, presence:true
    
end
