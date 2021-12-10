defmodule Google.Api.Expr.V1beta1.Decl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind:
            {:ident, Google.Api.Expr.V1beta1.IdentDecl.t() | nil}
            | {:function, Google.Api.Expr.V1beta1.FunctionDecl.t() | nil},
          id: integer,
          name: String.t(),
          doc: String.t()
        }

  defstruct kind: nil,
            id: 0,
            name: "",
            doc: ""

  oneof :kind, 0

  field :id, 1, type: :int32
  field :name, 2, type: :string
  field :doc, 3, type: :string
  field :ident, 4, type: Google.Api.Expr.V1beta1.IdentDecl, oneof: 0
  field :function, 5, type: Google.Api.Expr.V1beta1.FunctionDecl, oneof: 0
end
defmodule Google.Api.Expr.V1beta1.DeclType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          type: String.t(),
          type_params: [Google.Api.Expr.V1beta1.DeclType.t()]
        }

  defstruct id: 0,
            type: "",
            type_params: []

  field :id, 1, type: :int32
  field :type, 2, type: :string

  field :type_params, 4,
    repeated: true,
    type: Google.Api.Expr.V1beta1.DeclType,
    json_name: "typeParams"
end
defmodule Google.Api.Expr.V1beta1.IdentDecl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Api.Expr.V1beta1.DeclType.t() | nil,
          value: Google.Api.Expr.V1beta1.Expr.t() | nil
        }

  defstruct type: nil,
            value: nil

  field :type, 3, type: Google.Api.Expr.V1beta1.DeclType
  field :value, 4, type: Google.Api.Expr.V1beta1.Expr
end
defmodule Google.Api.Expr.V1beta1.FunctionDecl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          args: [Google.Api.Expr.V1beta1.IdentDecl.t()],
          return_type: Google.Api.Expr.V1beta1.DeclType.t() | nil,
          receiver_function: boolean
        }

  defstruct args: [],
            return_type: nil,
            receiver_function: false

  field :args, 1, repeated: true, type: Google.Api.Expr.V1beta1.IdentDecl
  field :return_type, 2, type: Google.Api.Expr.V1beta1.DeclType, json_name: "returnType"
  field :receiver_function, 3, type: :bool, json_name: "receiverFunction"
end
