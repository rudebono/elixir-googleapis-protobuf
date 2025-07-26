defmodule Google.Cloud.Securityposture.V1.CustomConstraint.MethodType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :METHOD_TYPE_UNSPECIFIED, 0
  field :CREATE, 1
  field :UPDATE, 2
  field :DELETE, 3
end

defmodule Google.Cloud.Securityposture.V1.CustomConstraint.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Securityposture.V1.PolicyRule.StringValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :allowed_values, 1, repeated: true, type: :string, json_name: "allowedValues"
  field :denied_values, 2, repeated: true, type: :string, json_name: "deniedValues"
end

defmodule Google.Cloud.Securityposture.V1.PolicyRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :values, 1, type: Google.Cloud.Securityposture.V1.PolicyRule.StringValues, oneof: 0
  field :allow_all, 2, type: :bool, json_name: "allowAll", oneof: 0
  field :deny_all, 3, type: :bool, json_name: "denyAll", oneof: 0
  field :enforce, 4, type: :bool, oneof: 0
  field :condition, 5, type: Google.Type.Expr
end

defmodule Google.Cloud.Securityposture.V1.CustomConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :resource_types, 2,
    repeated: true,
    type: :string,
    json_name: "resourceTypes",
    deprecated: false

  field :method_types, 3,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.CustomConstraint.MethodType,
    json_name: "methodTypes",
    enum: true

  field :condition, 4, type: :string

  field :action_type, 5,
    type: Google.Cloud.Securityposture.V1.CustomConstraint.ActionType,
    json_name: "actionType",
    enum: true

  field :display_name, 6, type: :string, json_name: "displayName"
  field :description, 7, type: :string

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
