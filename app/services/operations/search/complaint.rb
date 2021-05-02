module Operations
  module Search
    class Complaint
      def run(params)
        search(params)
      end

      private

      def get_complaints
        ::Complaint.where(
          company_id: @company,
          locale_id: @locale
        ).count
      end

      def search(params)
        company(params)
        locale(params)
        get_complaints
      end

      def company(params)
        @company = Company.find_by(name: params[:company]) || false
      end

      def locale(params)
        @locale = Locale.where(company_id: @company.id, postcode: params[:postcode]) || false
      end
    end
  end
end
