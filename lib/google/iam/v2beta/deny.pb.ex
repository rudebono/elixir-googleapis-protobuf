defmodule Google.Iam.V2beta.DenyRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :denied_principals, 1, repeated: true, type: :string, json_name: "deniedPrincipals"
  field :exception_principals, 2, repeated: true, type: :string, json_name: "exceptionPrincipals"
  field :denied_permissions, 3, repeated: true, type: :string, json_name: "deniedPermissions"

  field :exception_permissions, 4,
    repeated: true,
    type: :string,
    json_name: "exceptionPermissions"

  field :denial_condition, 5, type: Google.Type.Expr, json_name: "denialCondition"
end
