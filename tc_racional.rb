require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase


	def test_simple

        assert_equal("(8/2)", Fraccion.new(8,2).to_s)
	
	end

end
