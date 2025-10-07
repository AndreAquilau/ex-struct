defmodule ExStruct do
  
  alias ExStruct.Domain.Entity.Cliente, as: Cliente
  alias ExStruct.Domain.ValueObject.Endereco, as: Endereco

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
