require 'test_helper'

class PhoneConverterTest < ActiveSupport::TestCase

	test "A normalized phone number must not contain any spaces" do
		number = "254 705 866 564"
		assert_equal "254705866564", PhoneConverter.normalize(number)
	end

	test "If a number begins with 07 then the leading 0 is stripped and a 254 is added" do
		number = "0722866564"
		assert_equal "254722866564", PhoneConverter.normalize(number)
	end

	test "If a number begins with 7 then a leading 254 is added" do
		number = "722866564"
		assert_equal "254722866564", PhoneConverter.normalize(number)
	end

	test "If a number has a leading + it is stripped" do
		number = "+254722866564"
		assert_equal "254722866564", PhoneConverter.normalize(number)
	end

	test "A valid phone number has twelve characters" do
		number = "+254 722 866 564"
		assert_equal true, PhoneConverter.is_valid?(number)

		number = "72232233"
		assert_equal false, PhoneConverter.is_valid?(number)

		number = "02072232233"
		assert_equal false, PhoneConverter.is_valid?(number)
	end
end
