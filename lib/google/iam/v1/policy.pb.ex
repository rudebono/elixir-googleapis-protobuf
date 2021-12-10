defmodule Google.Iam.V1.BindingDelta.Action do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ACTION_UNSPECIFIED | :ADD | :REMOVE

  field :ACTION_UNSPECIFIED, 0
  field :ADD, 1
  field :REMOVE, 2
end
defmodule Google.Iam.V1.AuditConfigDelta.Action do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ACTION_UNSPECIFIED | :ADD | :REMOVE

  field :ACTION_UNSPECIFIED, 0
  field :ADD, 1
  field :REMOVE, 2
end
defmodule Google.Iam.V1.Policy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: integer,
          bindings: [Google.Iam.V1.Binding.t()],
          etag: binary
        }

  defstruct version: 0,
            bindings: [],
            etag: ""

  field :version, 1, type: :int32
  field :bindings, 4, repeated: true, type: Google.Iam.V1.Binding
  field :etag, 3, type: :bytes
end
defmodule Google.Iam.V1.Binding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          role: String.t(),
          members: [String.t()],
          condition: Google.Type.Expr.t() | nil
        }

  defstruct role: "",
            members: [],
            condition: nil

  field :role, 1, type: :string
  field :members, 2, repeated: true, type: :string
  field :condition, 3, type: Google.Type.Expr
end
defmodule Google.Iam.V1.PolicyDelta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          binding_deltas: [Google.Iam.V1.BindingDelta.t()],
          audit_config_deltas: [Google.Iam.V1.AuditConfigDelta.t()]
        }

  defstruct binding_deltas: [],
            audit_config_deltas: []

  field :binding_deltas, 1,
    repeated: true,
    type: Google.Iam.V1.BindingDelta,
    json_name: "bindingDeltas"

  field :audit_config_deltas, 2,
    repeated: true,
    type: Google.Iam.V1.AuditConfigDelta,
    json_name: "auditConfigDeltas"
end
defmodule Google.Iam.V1.BindingDelta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action: Google.Iam.V1.BindingDelta.Action.t(),
          role: String.t(),
          member: String.t(),
          condition: Google.Type.Expr.t() | nil
        }

  defstruct action: :ACTION_UNSPECIFIED,
            role: "",
            member: "",
            condition: nil

  field :action, 1, type: Google.Iam.V1.BindingDelta.Action, enum: true
  field :role, 2, type: :string
  field :member, 3, type: :string
  field :condition, 4, type: Google.Type.Expr
end
defmodule Google.Iam.V1.AuditConfigDelta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action: Google.Iam.V1.AuditConfigDelta.Action.t(),
          service: String.t(),
          exempted_member: String.t(),
          log_type: String.t()
        }

  defstruct action: :ACTION_UNSPECIFIED,
            service: "",
            exempted_member: "",
            log_type: ""

  field :action, 1, type: Google.Iam.V1.AuditConfigDelta.Action, enum: true
  field :service, 2, type: :string
  field :exempted_member, 3, type: :string, json_name: "exemptedMember"
  field :log_type, 4, type: :string, json_name: "logType"
end
