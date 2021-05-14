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

  defstruct [:allowed_values, :denied_values, :all_values, :suggested_value, :inherit_from_parent]

  field :allowed_values, 1, repeated: true, type: :string
  field :denied_values, 2, repeated: true, type: :string
  field :all_values, 3, type: Google.Cloud.Orgpolicy.V1.Policy.ListPolicy.AllValues, enum: true
  field :suggested_value, 4, type: :string
  field :inherit_from_parent, 5, type: :bool
end

defmodule Google.Cloud.Orgpolicy.V1.Policy.BooleanPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enforced: boolean
        }

  defstruct [:enforced]

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
          policy_type: {atom, any},
          version: integer,
          constraint: String.t(),
          etag: binary,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:policy_type, :version, :constraint, :etag, :update_time]

  oneof :policy_type, 0
  field :version, 1, type: :int32
  field :constraint, 2, type: :string
  field :etag, 3, type: :bytes
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :list_policy, 5, type: Google.Cloud.Orgpolicy.V1.Policy.ListPolicy, oneof: 0
  field :boolean_policy, 6, type: Google.Cloud.Orgpolicy.V1.Policy.BooleanPolicy, oneof: 0
  field :restore_default, 7, type: Google.Cloud.Orgpolicy.V1.Policy.RestoreDefault, oneof: 0
end
