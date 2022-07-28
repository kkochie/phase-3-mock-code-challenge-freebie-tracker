class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    #accepts an "iten_name" and returns true if any of the freebies associated with that dev has that "item_name", otherwise return false
    def received_one?(item_name)
       self.freebies.any? do |item|
            item.item_name == item_name
       end
    end


    #accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev; only make the change if the freebie belongs to the dev who's giving it away
    def give_away(dev, freebie)
        freebie.update(dev: dev) unless freebie.dev != self
    end

end
