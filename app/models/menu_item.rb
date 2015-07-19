class MenuItem < ActiveRecord::Base
	acts_as_list
	
	belongs_to :page
	has_many :menu_items, dependent: :destroy
	belongs_to :menu_item
	validates_presence_of :page_id
end
