defmodule Google.Cloud.Orgpolicy.V2.Constraint.ConstraintDefault do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONSTRAINT_DEFAULT_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Orgpolicy.V2.CustomConstraint.MethodType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :METHOD_TYPE_UNSPECIFIED, 0
  field :CREATE, 1
  field :UPDATE, 2
  field :DELETE, 3
  field :REMOVE_GRANT, 4
  field :GOVERN_TAGS, 5
end

defmodule Google.Cloud.Orgpolicy.V2.CustomConstraint.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.ListConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :supports_in, 1, type: :bool, json_name: "supportsIn"
  field :supports_under, 2, type: :bool, json_name: "supportsUnder"
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.BooleanConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :constraint_type, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :constraint_default, 4,
    type: Google.Cloud.Orgpolicy.V2.Constraint.ConstraintDefault,
    json_name: "constraintDefault",
    enum: true

  field :list_constraint, 5,
    type: Google.Cloud.Orgpolicy.V2.Constraint.ListConstraint,
    json_name: "listConstraint",
    oneof: 0

  field :boolean_constraint, 6,
    type: Google.Cloud.Orgpolicy.V2.Constraint.BooleanConstraint,
    json_name: "booleanConstraint",
    oneof: 0

  field :supports_dry_run, 7, type: :bool, json_name: "supportsDryRun"
end

defmodule Google.Cloud.Orgpolicy.V2.CustomConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :resource_types, 2,
    repeated: true,
    type: :string,
    json_name: "resourceTypes",
    deprecated: false

  field :method_types, 3,
    repeated: true,
    type: Google.Cloud.Orgpolicy.V2.CustomConstraint.MethodType,
    json_name: "methodTypes",
    enum: true

  field :condition, 4, type: :string

  field :action_type, 5,
    type: Google.Cloud.Orgpolicy.V2.CustomConstraint.ActionType,
    json_name: "actionType",
    enum: true

  field :display_name, 6, type: :string, json_name: "displayName"
  field :description, 7, type: :string

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end