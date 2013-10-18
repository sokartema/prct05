

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase


	def test_simple

        assert_equal("8/2", Fraccion.new(8,2).to_s)
	
	end

	def test_suma

	assert_equal("31/7", Fraccion.new(8,2).suma(3,7))

	end
	
	def test_resta

	assert_equal("2/1", Fraccion.new(8,2).resta(6,3))

	end

	def test_producto

	assert_equal("16/3", Fraccion.new(8,2).producto(4,3))

	end


	def test_division

	assert_equal("32/5", Fraccion.new(8,2).division(5,8))

	end

	
end	
