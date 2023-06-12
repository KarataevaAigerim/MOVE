class Program < ApplicationRecord
    has_many :users
    has_many :weeks
end
