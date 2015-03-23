class Sale < ActiveRecord::Base
	belongs_to :product
	belongs_to :employee
	belongs_to :dealer_store



def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |sale|
      csv << sale.attributes.values_at(*column_names)
    end
  end
end

end
