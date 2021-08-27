class Movie < ApplicationRecord

  validates_presence_of :name,
                        :year,
                        :academy_award

  belongs_to :actor
end
