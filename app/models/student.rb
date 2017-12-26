class Student < ApplicationRecord

	belongs_to :course
   	def self.search(search)

		 if search
   			 where('name LIKE ?', "%#{search}%")
 		 else
    		 all
   		 end
	end
    
    mount_uploader :image, ImageUploader

end
