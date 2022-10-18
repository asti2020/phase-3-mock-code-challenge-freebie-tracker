class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dav

    def self.freebie_company
        Freebie.company.dav
    end

    def self.freebie_dev
        Freebie.freebie.dev
    end

    def self.freebie_print_details
        Freebie.freebie.insert(dav.name.to_s) + " owns a " + self.freebie.item_name + " from" + self.freebie.company.fitst.name

    end
end
