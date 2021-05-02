module Operations
  module Create
    class Locale
      def run(params, company)
        search(params)
        ::Locale.find_or_create_by(set_params(company))
      end

      private

      def search(locale)
        @place = Geocoder.search(locale).first.data
      end

      def set_coordinates
        [@place['lon'].to_f, @place['lat'].to_f].to_s
      end

      def set_address
        @place['address']['road']
      end

      def set_state
        @place['address']['state']
      end

      def set_country
        @place['address']['country']
      end

      def set_postcode
        @place['address']['postcode']
      end

      def set_params(company_id)
        {
          coordinates: set_coordinates,
          address: set_address,
          state: set_state,
          country: set_country,
          postcode: set_postcode,
          company_id: company_id
        }
      end
    end
  end
end
