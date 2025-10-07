defmodule ExStructTest do
  use ExUnit.Case
  doctest ExStruct

  test "greets the world" do
    assert ExStruct.hello() == :world
  end
end
