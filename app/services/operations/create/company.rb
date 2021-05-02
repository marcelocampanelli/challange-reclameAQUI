module Operations
  module Create
    class Company
      def run(params)
        create(params)
      end

      private

      def create(params)
        ::Company.find_or_create_by!(company_name(params))
      end

      def company_name(params)
        {
          name: params[:company]
        }
      end
    end
  end
end
