class User < ActiveRecord::Base
	has_many :recipies, dependent: :destroy
end
