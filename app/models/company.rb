class Company < ActiveRecord::Base
    has_many :freebies

    def company_freebie
        self.company.freebie
    end

    def company_dev
        self.company.devs
    end

    def company_give_freebie
        self.company.select(freebie.name).first
    end

    def Company.oldest_company
        self.company.sort_by(:year)
    end
end
