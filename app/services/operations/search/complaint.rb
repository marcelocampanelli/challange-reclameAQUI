module Operations
  module Search
    class Complaint
      def run(params)
        search(params)
      end

      private

      def search(params)
        ::Complaint.where(
          company_id: company_id(params),
          locale_id: locale_id(params)
        ).count
      end

      def company_id(params)
        Company.find_by(name: params[:company]) || false
      end

      def locale_id(params)
        Locale.find_by(state: params[:state], city: params[:city],
                       postcode: params[:postcode]) || false
      end
    end
  end
end
