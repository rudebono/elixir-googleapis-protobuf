defmodule Google.Cloud.Gkehub.V1alpha.FeatureResourceState.State do
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

defmodule Google.Cloud.Gkehub.V1alpha.FeatureState.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CODE_UNSPECIFIED | :OK | :WARNING | :ERROR

  field :CODE_UNSPECIFIED, 0

  field :OK, 1

  field :WARNING, 2

  field :ERROR, 3
end

defmodule Google.Cloud.Gkehub.V1alpha.Feature.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha.Feature.MembershipSpecsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Gkehub.V1alpha.MembershipFeatureSpec.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gkehub.V1alpha.MembershipFeatureSpec
end

defmodule Google.Cloud.Gkehub.V1alpha.Feature.MembershipStatesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Gkehub.V1alpha.MembershipFeatureState.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gkehub.V1alpha.MembershipFeatureState
end

defmodule Google.Cloud.Gkehub.V1alpha.Feature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          labels: %{String.t() => String.t()},
          resource_state: Google.Cloud.Gkehub.V1alpha.FeatureResourceState.t() | nil,
          spec: Google.Cloud.Gkehub.V1alpha.CommonFeatureSpec.t() | nil,
          membership_specs: %{
            String.t() => Google.Cloud.Gkehub.V1alpha.MembershipFeatureSpec.t() | nil
          },
          state: Google.Cloud.Gkehub.V1alpha.CommonFeatureState.t() | nil,
          membership_states: %{
            String.t() => Google.Cloud.Gkehub.V1alpha.MembershipFeatureState.t() | nil
          },
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :labels,
    :resource_state,
    :spec,
    :membership_specs,
    :state,
    :membership_states,
    :create_time,
    :update_time,
    :delete_time
  ]

  field :name, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha.Feature.LabelsEntry,
    map: true

  field :resource_state, 3, type: Google.Cloud.Gkehub.V1alpha.FeatureResourceState
  field :spec, 4, type: Google.Cloud.Gkehub.V1alpha.CommonFeatureSpec

  field :membership_specs, 5,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha.Feature.MembershipSpecsEntry,
    map: true

  field :state, 6, type: Google.Cloud.Gkehub.V1alpha.CommonFeatureState

  field :membership_states, 7,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha.Feature.MembershipStatesEntry,
    map: true

  field :create_time, 8, type: Google.Protobuf.Timestamp
  field :update_time, 9, type: Google.Protobuf.Timestamp
  field :delete_time, 10, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Gkehub.V1alpha.FeatureResourceState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Gkehub.V1alpha.FeatureResourceState.State.t()
        }

  defstruct [:state]

  field :state, 1, type: Google.Cloud.Gkehub.V1alpha.FeatureResourceState.State, enum: true
end

defmodule Google.Cloud.Gkehub.V1alpha.FeatureState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Gkehub.V1alpha.FeatureState.Code.t(),
          description: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:code, :description, :update_time]

  field :code, 1, type: Google.Cloud.Gkehub.V1alpha.FeatureState.Code, enum: true
  field :description, 2, type: :string
  field :update_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Gkehub.V1alpha.CommonFeatureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_spec: {atom, any}
        }

  defstruct [:feature_spec]

  oneof :feature_spec, 0

  field :multiclusteringress, 102,
    type: Google.Cloud.Gkehub.Multiclusteringress.V1alpha.FeatureSpec,
    oneof: 0

  field :cloudauditlogging, 108,
    type: Google.Cloud.Gkehub.Cloudauditlogging.V1alpha.FeatureSpec,
    oneof: 0
end

defmodule Google.Cloud.Gkehub.V1alpha.CommonFeatureState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_state: {atom, any},
          state: Google.Cloud.Gkehub.V1alpha.FeatureState.t() | nil
        }

  defstruct [:feature_state, :state]

  oneof :feature_state, 0
  field :servicemesh, 100, type: Google.Cloud.Gkehub.Servicemesh.V1alpha.FeatureState, oneof: 0
  field :state, 1, type: Google.Cloud.Gkehub.V1alpha.FeatureState
end

defmodule Google.Cloud.Gkehub.V1alpha.MembershipFeatureSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_spec: {atom, any}
        }

  defstruct [:feature_spec]

  oneof :feature_spec, 0

  field :configmanagement, 106,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.MembershipSpec,
    oneof: 0
end

defmodule Google.Cloud.Gkehub.V1alpha.MembershipFeatureState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feature_state: {atom, any},
          state: Google.Cloud.Gkehub.V1alpha.FeatureState.t() | nil
        }

  defstruct [:feature_state, :state]

  oneof :feature_state, 0
  field :servicemesh, 100, type: Google.Cloud.Gkehub.Servicemesh.V1alpha.MembershipState, oneof: 0
  field :metering, 104, type: Google.Cloud.Gkehub.Metering.V1alpha.MembershipState, oneof: 0

  field :configmanagement, 106,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.MembershipState,
    oneof: 0

  field :state, 1, type: Google.Cloud.Gkehub.V1alpha.FeatureState
end
