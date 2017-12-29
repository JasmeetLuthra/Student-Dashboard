class Student < ApplicationRecord

	belongs_to :course
   	def self.search(search_string)

		 if search_string
   			 where('name LIKE ?' , "%#{search_string}%" )
 		 else
    		 all
   		 end
	end

	def self.searchp(sear)

		 if sear
   			 where('phone LIKE ?' , "%#{sear}%" )
 		 else
    		 all
   		 end
	end

	def self.searchc(searc)

		 if searc
   			 where('course_id LIKE ?' , "%#{searc}%" )
 		 else
    		 all
   		 end
	end

		
    
    mount_uploader :image, ImageUploader

end
