class Company < ActiveRecord::Base
    has_many :childcompany
end
