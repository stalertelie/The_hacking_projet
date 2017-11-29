class Product < ApplicationRecord
	belongs_to :category
end

	def category_name
		category.try(:name)
	end

	def category_name=(name)
		self.category = Category.find_by_name(name) if name.present?
	end
end
