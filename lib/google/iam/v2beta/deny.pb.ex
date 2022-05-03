defmodule Google.Iam.V2beta.DenyRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          denied_principals: [String.t()],
          exception_principals: [String.t()],
          denied_permissions: [String.t()],
          exception_permissions: [String.t()],
          denial_condition: Google.Type.Expr.t() | nil
        }

  defstruct denied_principals: [],
            exception_principals: [],
            denied_permissions: [],
            exception_permissions: [],
            denial_condition: nil

  field :denied_principals, 1, repeated: true, type: :string, json_name: "deniedPrincipals"
  field :exception_principals, 2, repeated: true, type: :string, json_name: "exceptionPrincipals"
  field :denied_permissions, 3, repeated: true, type: :string, json_name: "deniedPermissions"

  field :exception_permissions, 4,
    repeated: true,
    type: :string,
    json_name: "exceptionPermissions"

  field :denial_condition, 5, type: Google.Type.Expr, json_name: "denialCondition"
end
