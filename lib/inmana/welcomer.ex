defmodule Inmana.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    # |> pipe operator
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  # patterns match
  defp evaluate("banana", 42) do
    {:ok, "You are very special banana"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}"}
  end

  defp evaluate(name, _age) do
    {:error, "You shall not pass #{name}"}
  end
end
