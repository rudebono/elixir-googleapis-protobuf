defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListRolloutsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListRolloutsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rollouts, 10509,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout

  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :rollout_id, 10503, type: :string, json_name: "rolloutId", deprecated: false

  field :rollout, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rollout, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout,
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
  field :update_mask, 10512, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
  field :etag, 10202, type: :string
  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListRolloutKindsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :page_size, 10505, type: :int32, json_name: "pageSize"
  field :page_token, 10506, type: :string, json_name: "pageToken"
  field :filter, 10507, type: :string
  field :order_by, 10508, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListRolloutKindsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rollout_kinds, 10509,
    repeated: true,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind,
    json_name: "rolloutKinds"

  field :next_page_token, 10510, type: :string, json_name: "nextPageToken"
  field :unreachable, 10511, repeated: true, type: :string
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetRolloutKindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateRolloutKindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 10006, type: :string, deprecated: false
  field :rollout_kind_id, 10503, type: :string, json_name: "rolloutKindId", deprecated: false

  field :rollout_kind, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind,
    json_name: "rolloutKind",
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateRolloutKindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rollout_kind, 10504,
    type: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind,
    json_name: "rolloutKind",
    deprecated: false

  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
  field :update_mask, 10512, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteRolloutKindRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 10001, type: :string, deprecated: false
  field :etag, 10202, type: :string
  field :validate_only, 10501, type: :bool, json_name: "validateOnly"
  field :request_id, 10502, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.SaasRollouts.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.saasplatform.saasservicemgmt.v1beta1.SaasRollouts",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListRollouts,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListRolloutsRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListRolloutsResponse

  rpc :GetRollout,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetRolloutRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout

  rpc :CreateRollout,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateRolloutRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout

  rpc :UpdateRollout,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateRolloutRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.Rollout

  rpc :DeleteRollout,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteRolloutRequest,
      Google.Protobuf.Empty

  rpc :ListRolloutKinds,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListRolloutKindsRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.ListRolloutKindsResponse

  rpc :GetRolloutKind,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.GetRolloutKindRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind

  rpc :CreateRolloutKind,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.CreateRolloutKindRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind

  rpc :UpdateRolloutKind,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.UpdateRolloutKindRequest,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.RolloutKind

  rpc :DeleteRolloutKind,
      Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.DeleteRolloutKindRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.SaasRollouts.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Saasplatform.Saasservicemgmt.V1beta1.SaasRollouts.Service
end
