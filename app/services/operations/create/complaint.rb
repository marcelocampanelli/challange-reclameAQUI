module Operations
  module Create
    class Complaint
      def run(params, company_id, locale_id)
        create(params, company_id, locale_id)
      end

      private

      def create(params, company_id, locale_id)
        ::Complaint.create!(complait_params(params, company_id, locale_id))
      end

      def complait_params(params, company_id, locale_id)
        {
          title: params[:title],
          description: params[:description],
          company_id: company_id,
          locale_id: locale_id
        }
      end
    end
  end
end
