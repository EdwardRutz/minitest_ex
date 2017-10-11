#!/usr/bin/ruby

require "minitest/autorun"
require_relative "fast_cars"

class TestFastCars < Minitest::Test

  def setup
    @demo = FastCars.new
  end
  
  def test_title_is_hello
    assert_equal "Fast Cars, Fast Times", @demo.title 
  end
  
  def test_predefined_answers_is_array
    assert_kind_of Array, FastCars::CARS
  end
  
  def test_predefined_answers_is_not_empty
    refute_empty FastCars::CARS  
  end
  
  def test_code_output
    assert_output "Fast fast fast" do
    @demo.speed
    end
  end
  
end
