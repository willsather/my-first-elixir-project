defmodule UnitConverterTest do
  use ExUnit.Case
  doctest UnitConverter

  test "greets the world" do
    assert UnitConverter.hello() == :world
  end

  test "converts kilograms to grams" do
    assert UnitConverter.kilograms_to_grams(10) == 10000
    assert UnitConverter.kilograms_to_grams(0) == 0
    assert UnitConverter.kilograms_to_grams(1.5) == 1500
  end

  test "kilograms to grams handles invalid input" do
    assert UnitConverter.kilograms_to_grams("hello there") == {:error, "invalid input"}
    assert UnitConverter.kilograms_to_grams(-1) == {:error, "invalid input"}
    assert UnitConverter.kilograms_to_grams([1, 2, 3]) == {:error, "invalid input"}
    assert UnitConverter.kilograms_to_grams(:invalid) == {:error, "invalid input"}
  end
end
