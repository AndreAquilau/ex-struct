defmodule ExStruct.Domain.Entity.Cliente do
    @enforce [:id]
    defstruct [:id, :nome, :email, ativo: true, papel: "admin", enderecos: []]
end