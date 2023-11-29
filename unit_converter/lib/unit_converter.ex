defmodule UnitConverter do
  @moduledoc """
  Documentation for `UnitConverter`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> UnitConverter.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Kilograms to Grams

  ## Examples

      iex> UnitConverter.kilograms_to_grams(10)
      10000

  """
  def kilograms_to_grams(x) do
    if is_number(x) and x >= 0 do
      x * 1000
    else
      {:error, "invalid input"}
    end
  end
end
