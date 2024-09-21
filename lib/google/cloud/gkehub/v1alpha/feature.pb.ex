defmodule Google.Cloud.Gkehub.V1alpha.FeatureResourceState.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLING, 1
  field :ACTIVE, 2
  field :DISABLING, 3
  field :UPDATING, 4
  field :SERVICE_UPDATING, 5
end

defmodule Google.Cloud.Gkehub.V1alpha.FeatureState.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :OK, 1
  field :WARNING, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Gkehub.V1alpha.Feature.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkehub.V1alpha.Feature.MembershipSpecsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gkehub.V1alpha.MembershipFeatureSpec
end

defmodule Google.Cloud.Gkehub.V1alpha.Feature.MembershipStatesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gkehub.V1alpha.MembershipFeatureState
end

defmodule Google.Cloud.Gkehub.V1alpha.Feature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha.Feature.LabelsEntry,
    map: true

  field :resource_state, 3,
    type: Google.Cloud.Gkehub.V1alpha.FeatureResourceState,
    json_name: "resourceState",
    deprecated: false

  field :spec, 4, type: Google.Cloud.Gkehub.V1alpha.CommonFeatureSpec, deprecated: false

  field :membership_specs, 5,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha.Feature.MembershipSpecsEntry,
    json_name: "membershipSpecs",
    map: true,
    deprecated: false

  field :state, 6, type: Google.Cloud.Gkehub.V1alpha.CommonFeatureState, deprecated: false

  field :membership_states, 7,
    repeated: true,
    type: Google.Cloud.Gkehub.V1alpha.Feature.MembershipStatesEntry,
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

defmodule Google.Cloud.Gkehub.V1alpha.FeatureResourceState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Gkehub.V1alpha.FeatureResourceState.State, enum: true
end

defmodule Google.Cloud.Gkehub.V1alpha.FeatureState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :code, 1, type: Google.Cloud.Gkehub.V1alpha.FeatureState.Code, enum: true
  field :description, 2, type: :string
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Gkehub.V1alpha.CommonFeatureSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :feature_state, 0

  field :servicemesh, 100, type: Google.Cloud.Gkehub.Servicemesh.V1alpha.FeatureState, oneof: 0
  field :state, 1, type: Google.Cloud.Gkehub.V1alpha.FeatureState, deprecated: false
end

defmodule Google.Cloud.Gkehub.V1alpha.MembershipFeatureSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :feature_spec, 0

  field :configmanagement, 106,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.MembershipSpec,
    oneof: 0
end

defmodule Google.Cloud.Gkehub.V1alpha.MembershipFeatureState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :feature_state, 0

  field :servicemesh, 100, type: Google.Cloud.Gkehub.Servicemesh.V1alpha.MembershipState, oneof: 0
  field :metering, 104, type: Google.Cloud.Gkehub.Metering.V1alpha.MembershipState, oneof: 0

  field :configmanagement, 106,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.MembershipState,
    oneof: 0

  field :state, 1, type: Google.Cloud.Gkehub.V1alpha.FeatureState
end