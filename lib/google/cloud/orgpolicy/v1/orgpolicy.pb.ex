defmodule Google.Cloud.Orgpolicy.V1.Policy.ListPolicy.AllValues do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ALL_VALUES_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Orgpolicy.V1.Policy.ListPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allowed_values, 1, repeated: true, type: :string, json_name: "allowedValues"
  field :denied_values, 2, repeated: true, type: :string, json_name: "deniedValues"

  field :all_values, 3,
    type: Google.Cloud.Orgpolicy.V1.Policy.ListPolicy.AllValues,
    json_name: "allValues",
    enum: true

  field :suggested_value, 4, type: :string, json_name: "suggestedValue"
  field :inherit_from_parent, 5, type: :bool, json_name: "inheritFromParent"
end

defmodule Google.Cloud.Orgpolicy.V1.Policy.BooleanPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enforced, 1, type: :bool
end

defmodule Google.Cloud.Orgpolicy.V1.Policy.RestoreDefault do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Orgpolicy.V1.Policy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :policy_type, 0

  field :version, 1, type: :int32
  field :constraint, 2, type: :string
  field :etag, 3, type: :bytes
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :list_policy, 5,
    type: Google.Cloud.Orgpolicy.V1.Policy.ListPolicy,
    json_name: "listPolicy",
    oneof: 0

  field :boolean_policy, 6,
    type: Google.Cloud.Orgpolicy.V1.Policy.BooleanPolicy,
    json_name: "booleanPolicy",
    oneof: 0

  field :restore_default, 7,
    type: Google.Cloud.Orgpolicy.V1.Policy.RestoreDefault,
    json_name: "restoreDefault",
    oneof: 0
end