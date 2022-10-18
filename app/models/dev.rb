class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def dev_freebie
        self.freebies
    end

    def dev_received_one
        if item_name ==  freebie.dev.name
            puts "True"
        else
            puts "False"
        end
    end

    def dev_give_away(dev, freebie)
        if dev.dev.item_name == freebie.dev.item_name
            self.freebies[dev.dev.item_name] = freebie

        else 
            self.true
        end

    end

end
