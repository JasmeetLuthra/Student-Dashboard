class Student < ApplicationRecord

	belongs_to :course
   	def self.search(search_string)

		 if search_string
   			 where('name LIKE ?' , "%#{search_string}%" )
 		 else
    		 all
   		 end
	end

	def self.searchp(search_string)

		 if search_string
   			 where('phone LIKE ?' , "%#{search_string}%" )
 		 else
    		 all
   		 end
	end

	def self.searchc(search_string)

		 if search_string
   			 where('course_id LIKE ?' , "%#{search_string}%" )
 		 else
    		 all
   		 end
	end

		
    
    mount_uploader :image, ImageUploader

end
