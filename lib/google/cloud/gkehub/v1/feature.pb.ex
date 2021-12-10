defmodule Google.Cloud.Gkehub.V1.FeatureResourceState.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :ENABLING
          | :ACTIVE
          | :DISABLING
          | :UPDATING
          | :SERVICE_UPDATING

  field :STATE_UNSPECIFIED, 0
  field :ENABLING, 1
  field :ACTIVE, 2
  field :DISABLING, 3
  field :UPDATING, 4
  field :SERVICE_UPDATING, 5
end
defmodule Google.Cloud.Gkehub.V1.FeatureState.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CODE_UNSPECIFIED | :OK | :WARNING | :ERROR

  field :CODE_UNSPECIFIED, 0
  field :OK, 1
  field :WARNING, 2
  field :ERROR, 3
end
defmodule Google.Cloud.Gkehub.V1.Feature.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gkehub.V1.Feature.MembershipSpecsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Gkehub.V1.MembershipFeatureSpec.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gkehub.V1.MembershipFeatureSpec
end
defmodule Google.Cloud.Gkehub.V1.Feature.MembershipStatesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Gkehub.V1.MembershipFeatureState.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gkehub.V1.MembershipFeatureState
end
defmodule Google.Cloud.Gkehub.V1.Feature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          labels: %{String.t() => String.t()},
          resource_state: Google.Cloud.Gkehub.V1.FeatureResourceState.t() | nil,
          spec: Google.Cloud.Gkehub.V1.CommonFeatureSpec.t() | nil,
          membership_specs: %{
            String.t() => Google.Cloud.Gkehub.V1.MembershipFeatureSpec.t() | nil
          },
          state: Google.Cloud.Gkehub.V1.CommonFeatureState.t() | nil,
          membership_states: %{
            String.t() => Google.Cloud.Gkehub.V1.MembershipFeatureState.t() | nil
          },
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            labels: %{},
            resource_state: nil,
            spec: nil,
            membership_specs: %{},
            state: nil,
            membership_states: %{},
            create_time: nil,
            update_time: nil,
            delete_time: nil

  field :name, 1, type: :string, deprecated: false
  field :labels, 2, repeated: true, type: Google.Cloud.Gkehub.V1.Feature.LabelsEntry, map: true

  field :resource_state, 3,
    type: Google.Cloud.Gkehub.V1.FeatureResourceState,
    json_name: "resourceState",
    deprecated: false

  field :spec, 4, type: Google.Cloud.Gkehub.V1.CommonFeatureSpec, deprecated: false

  field :membership_specs, 5,
    repeated: true,
    type: Google.Cloud.Gkehub.V1.Feature.MembershipSpecsEntry,
    json_name: "membershipSpecs",
    map: true,
    deprecated: false

  field :state, 6, type: Google.Cloud.Gkehub.V1.CommonFeatureState, deprecated: false

  field :membership_states, 7,
    repeated: true,
    type: Google.Cloud.Gkehub.V1.Feature.MembershipStatesEntry,
    json_name: "membershipStates",
    map: true,
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.FeatureResourceState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Gkehub.V1.FeatureResourceState.State.t()
        }

  defstruct state: :STATE_UNSPECIFIED

  field :state, 1, type: Google.Cloud.Gkehub.V1.FeatureResourceState.State, enum: true
end
defmodule Google.Cloud.Gkehub.V1.FeatureState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Gkehub.V1.FeatureState.Code.t(),
          description: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct code: :CODE_UNSPECIFIED,
            description: "",
            update_time: nil

  field :code, 1, type: Google.Cloud.Gkehub.V1.FeatureState.Code, enum: true
  field :description, 2, type: :string
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Gkehub.V1.CommonFeatureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_spec:
            {:multiclusteringress,
             Google.Cloud.Gkehub.Multiclusteringress.V1.FeatureSpec.t() | nil}
        }

  defstruct feature_spec: nil

  oneof :feature_spec, 0

  field :multiclusteringress, 102,
    type: Google.Cloud.Gkehub.Multiclusteringress.V1.FeatureSpec,
    oneof: 0
end
defmodule Google.Cloud.Gkehub.V1.CommonFeatureState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Gkehub.V1.FeatureState.t() | nil
        }

  defstruct state: nil

  field :state, 1, type: Google.Cloud.Gkehub.V1.FeatureState, deprecated: false
end
defmodule Google.Cloud.Gkehub.V1.MembershipFeatureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_spec:
            {:configmanagement, Google.Cloud.Gkehub.Configmanagement.V1.MembershipSpec.t() | nil}
        }

  defstruct feature_spec: nil

  oneof :feature_spec, 0

  field :configmanagement, 106,
    type: Google.Cloud.Gkehub.Configmanagement.V1.MembershipSpec,
    oneof: 0
end
defmodule Google.Cloud.Gkehub.V1.MembershipFeatureState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_state:
            {:configmanagement, Google.Cloud.Gkehub.Configmanagement.V1.MembershipState.t() | nil},
          state: Google.Cloud.Gkehub.V1.FeatureState.t() | nil
        }

  defstruct feature_state: nil,
            state: nil

  oneof :feature_state, 0

  field :configmanagement, 106,
    type: Google.Cloud.Gkehub.Configmanagement.V1.MembershipState,
    oneof: 0

  field :state, 1, type: Google.Cloud.Gkehub.V1.FeatureState
end
