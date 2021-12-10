defmodule Google.Cloud.Orgpolicy.V1.Policy.ListPolicy.AllValues do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ALL_VALUES_UNSPECIFIED | :ALLOW | :DENY

  field :ALL_VALUES_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end
defmodule Google.Cloud.Orgpolicy.V1.Policy.ListPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_values: [String.t()],
          denied_values: [String.t()],
          all_values: Google.Cloud.Orgpolicy.V1.Policy.ListPolicy.AllValues.t(),
          suggested_value: String.t(),
          inherit_from_parent: boolean
        }

  defstruct allowed_values: [],
            denied_values: [],
            all_values: :ALL_VALUES_UNSPECIFIED,
            suggested_value: "",
            inherit_from_parent: false

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enforced: boolean
        }

  defstruct enforced: false

  field :enforced, 1, type: :bool
end
defmodule Google.Cloud.Orgpolicy.V1.Policy.RestoreDefault do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Orgpolicy.V1.Policy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_type:
            {:list_policy, Google.Cloud.Orgpolicy.V1.Policy.ListPolicy.t() | nil}
            | {:boolean_policy, Google.Cloud.Orgpolicy.V1.Policy.BooleanPolicy.t() | nil}
            | {:restore_default, Google.Cloud.Orgpolicy.V1.Policy.RestoreDefault.t() | nil},
          version: integer,
          constraint: String.t(),
          etag: binary,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct policy_type: nil,
            version: 0,
            constraint: "",
            etag: "",
            update_time: nil

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
