class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dav

    def freebie_company
        self.company.dav
    end

    def freebie_dev
        self.freebie.dev
    end

    def freebie_print_details
        self.freebie.insert(dav.name.to_s) + " owns a " + self.freebie.item_name + " from" + self.freebie.company.fitst.name

    end
end
