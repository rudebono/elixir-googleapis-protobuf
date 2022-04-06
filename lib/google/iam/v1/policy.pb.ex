defmodule Google.Iam.V1.AuditLogConfig.LogType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOG_TYPE_UNSPECIFIED | :ADMIN_READ | :DATA_WRITE | :DATA_READ

  field :LOG_TYPE_UNSPECIFIED, 0
  field :ADMIN_READ, 1
  field :DATA_WRITE, 2
  field :DATA_READ, 3
end
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
          audit_configs: [Google.Iam.V1.AuditConfig.t()],
          etag: binary
        }

  defstruct version: 0,
            bindings: [],
            audit_configs: [],
            etag: ""

  field :version, 1, type: :int32
  field :bindings, 4, repeated: true, type: Google.Iam.V1.Binding

  field :audit_configs, 6,
    repeated: true,
    type: Google.Iam.V1.AuditConfig,
    json_name: "auditConfigs"

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
defmodule Google.Iam.V1.AuditConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          audit_log_configs: [Google.Iam.V1.AuditLogConfig.t()]
        }

  defstruct service: "",
            audit_log_configs: []

  field :service, 1, type: :string

  field :audit_log_configs, 3,
    repeated: true,
    type: Google.Iam.V1.AuditLogConfig,
    json_name: "auditLogConfigs"
end
defmodule Google.Iam.V1.AuditLogConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_type: Google.Iam.V1.AuditLogConfig.LogType.t(),
          exempted_members: [String.t()]
        }

  defstruct log_type: :LOG_TYPE_UNSPECIFIED,
            exempted_members: []

  field :log_type, 1, type: Google.Iam.V1.AuditLogConfig.LogType, json_name: "logType", enum: true
  field :exempted_members, 2, repeated: true, type: :string, json_name: "exemptedMembers"
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
