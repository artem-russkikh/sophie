# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  category_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class Image < ActiveRecord::Base
  belongs_to :category
  has_attached_file :photo,
				  	styles: {
				  	  big: '1000x1000>'
				  	},
				  	default_url: '/images/:style/missing.png'
  validates_attachment_content_type :photo,
  									content_type: /\Aimage\/.*\Z/
end
