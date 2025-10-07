defmodule ExStruct do
  @moduledoc """
  Documentation for `ExStruct`.
  """

  alias ExStruct.Domain.Entity.Cliente, as: Cliente
  alias ExStruct.Domain.ValueObject.Endereco, as: Endereco

  @doc """
  Hello world.

  ## Examples

      iex> ExStruct.hello()
      :world

  """
  def hello do
    :world
  end

  def create_cliente() do
    %Cliente{
      id: 101,
      nome: "André Da Silva",
      email: "andre@exemplo.com",
      ativo: true,
      papel: "admin",
      enderecos: [
        %Endereco{
          tipo: "residencial",
          rua: "Rua das Flores",
          numero: 123,
          cidade: "São Paulo",
          estado: "SP"
        },
        %Endereco{
          tipo: "comercial",
          rua: "Av. Paulista",
          numero: 345,
          cidade: "São Paulo",
          estado: "SP"
        }
      ]
    }
  end
end
