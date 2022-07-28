class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    #Takes a dev, an item_name and a value as arguments and creates a new freebie instance associated with this company and the given dev
    def give_freebie(dev, item_name, value)
        Freebie.create(
            item_name: item_name,
            value: value,
            company: self,
            dev: dev
        )
    end

    def self.oldest_company
        self.order(:founding_year).first
    end
end
