class Topic < ActiveRecord::Base
    belongs_to :language
    has_many :questions

end
