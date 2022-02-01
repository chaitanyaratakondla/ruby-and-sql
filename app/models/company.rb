class Company < ApplicationRecord
    has_many :contacts
#original code, but no need since Rails has better functionality:
    #def contacts
     #   Contact.where({company_id:id})
    #end

end
