defmodule Google.Cloud.Orgpolicy.V2.Constraint.ConstraintDefault do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONSTRAINT_DEFAULT_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.MethodType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :METHOD_TYPE_UNSPECIFIED, 0
  field :CREATE, 1
  field :UPDATE, 2
  field :DELETE, 3
  field :REMOVE_GRANT, 4
  field :GOVERN_TAGS, 5
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.Parameter.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :LIST, 1
  field :STRING, 2
  field :BOOLEAN, 3
end

defmodule Google.Cloud.Orgpolicy.V2.CustomConstraint.MethodType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :METHOD_TYPE_UNSPECIFIED, 0
  field :CREATE, 1
  field :UPDATE, 2
  field :DELETE, 3
  field :REMOVE_GRANT, 4
  field :GOVERN_TAGS, 5
end

defmodule Google.Cloud.Orgpolicy.V2.CustomConstraint.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.ListConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :supports_in, 1, type: :bool, json_name: "supportsIn"
  field :supports_under, 2, type: :bool, json_name: "supportsUnder"
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.Parameter.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :description, 1, type: :string
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.Parameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.Parameter.Type,
    enum: true

  field :default_value, 2, type: Google.Protobuf.Value, json_name: "defaultValue"
  field :valid_values_expr, 3, type: :string, json_name: "validValuesExpr"

  field :metadata, 4,
    type: Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.Parameter.Metadata

  field :item, 5,
    type: Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.Parameter.Type,
    enum: true
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.ParametersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.Parameter
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_types, 1, repeated: true, type: :string, json_name: "resourceTypes"

  field :method_types, 2,
    repeated: true,
    type: Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.MethodType,
    json_name: "methodTypes",
    enum: true

  field :condition, 3, type: :string

  field :action_type, 4,
    type: Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.ActionType,
    json_name: "actionType",
    enum: true

  field :parameters, 5,
    repeated: true,
    type: Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition.ParametersEntry,
    map: true
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint.BooleanConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom_constraint_definition, 1,
    type: Google.Cloud.Orgpolicy.V2.Constraint.CustomConstraintDefinition,
    json_name: "customConstraintDefinition"
end

defmodule Google.Cloud.Orgpolicy.V2.Constraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
  field :equivalent_constraint, 8, type: :string, json_name: "equivalentConstraint"
  field :supports_simulation, 9, type: :bool, json_name: "supportsSimulation"
end

defmodule Google.Cloud.Orgpolicy.V2.CustomConstraint do
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
