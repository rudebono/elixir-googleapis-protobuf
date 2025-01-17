defmodule Google.Iam.V1.AuditLogConfig.LogType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :LOG_TYPE_UNSPECIFIED, 0
  field :ADMIN_READ, 1
  field :DATA_WRITE, 2
  field :DATA_READ, 3
end

defmodule Google.Iam.V1.BindingDelta.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :ADD, 1
  field :REMOVE, 2
end

defmodule Google.Iam.V1.AuditConfigDelta.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :ADD, 1
  field :REMOVE, 2
end

defmodule Google.Iam.V1.Policy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :role, 1, type: :string
  field :members, 2, repeated: true, type: :string
  field :condition, 3, type: Google.Type.Expr
end

defmodule Google.Iam.V1.AuditConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service, 1, type: :string

  field :audit_log_configs, 3,
    repeated: true,
    type: Google.Iam.V1.AuditLogConfig,
    json_name: "auditLogConfigs"
end

defmodule Google.Iam.V1.AuditLogConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :log_type, 1, type: Google.Iam.V1.AuditLogConfig.LogType, json_name: "logType", enum: true
  field :exempted_members, 2, repeated: true, type: :string, json_name: "exemptedMembers"
end

defmodule Google.Iam.V1.PolicyDelta do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :action, 1, type: Google.Iam.V1.BindingDelta.Action, enum: true
  field :role, 2, type: :string
  field :member, 3, type: :string
  field :condition, 4, type: Google.Type.Expr
end

defmodule Google.Iam.V1.AuditConfigDelta do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :action, 1, type: Google.Iam.V1.AuditConfigDelta.Action, enum: true
  field :service, 2, type: :string
  field :exempted_member, 3, type: :string, json_name: "exemptedMember"
  field :log_type, 4, type: :string, json_name: "logType"
end
