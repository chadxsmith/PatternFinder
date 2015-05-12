class Question < ActiveRecord::Base
    belongs_to :topic
    has_one :answer
end
