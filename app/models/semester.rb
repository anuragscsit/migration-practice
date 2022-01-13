class Semester < ApplicationRecord
	validates :sem, length:{minimum:1, maximum: 2}
end
