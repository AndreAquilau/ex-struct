📘 Estudo de Structs em Elixir

Este repositório tem como objetivo demonstrar o uso de structs em Elixir, com foco na modelagem de dados de clientes e seus endereços.
🚀 O que são Structs?

Structs são uma forma de criar estruturas de dados com campos nomeados e valores padrão. Elas são baseadas em mapas, mas oferecem validação de chave e são associadas a módulos específicos.
🧱 Exemplo de Structs

Neste exemplo, criamos duas structs principais:

    User: representa um cliente do sistema.

    Endereco: representa os endereços associados ao cliente.

📦 Definição das Structs
elixir```
defmodule ExStruct.Domain.Entity.Cliente do
    @enforce [:id]
    defstruct [:id, :nome, :email, ativo: true, papel: "admin", enderecos: []]
end

defmodule ExStruct.Domain.ValueObject.Endereco do
    defstruct [:tipo, :rua, :numero, :cidade, :estado]
end

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
```