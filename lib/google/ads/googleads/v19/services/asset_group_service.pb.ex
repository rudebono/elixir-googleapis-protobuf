defmodule Google.Ads.Googleads.V19.Services.MutateAssetGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.AssetGroupOperation,
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V19.Services.AssetGroupOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V19.Resources.AssetGroup, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V19.Resources.AssetGroup, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.MutateAssetGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.MutateAssetGroupResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V19.Services.MutateAssetGroupResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.AssetGroupService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v19.services.AssetGroupService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateAssetGroups,
      Google.Ads.Googleads.V19.Services.MutateAssetGroupsRequest,
      Google.Ads.Googleads.V19.Services.MutateAssetGroupsResponse
end

defmodule Google.Ads.Googleads.V19.Services.AssetGroupService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V19.Services.AssetGroupService.Service
end
