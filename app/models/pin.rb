class Pin < ActiveRecord::Base
	belongs_to :user
    has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "250x250>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
