module Devise
  module Encryptors
    class Rot13 < Base
      def self.digest(password, stretches, salt, pepper)
        "#{password}-#{salt}".tr! "A-Za-z", "N-ZA-Mn-za-m"
      end
    end
  end
end
