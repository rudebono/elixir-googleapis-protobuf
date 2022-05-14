defmodule Google.Cloud.Asset.V1p1beta1.SearchAllResourcesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :scope, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes", deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 10, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Asset.V1p1beta1.SearchAllResourcesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Asset.V1p1beta1.SearchAllIamPoliciesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :scope, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Asset.V1p1beta1.SearchAllIamPoliciesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Asset.V1p1beta1.AssetService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.asset.v1p1beta1.AssetService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :SearchAllResources,
      Google.Cloud.Asset.V1p1beta1.SearchAllResourcesRequest,
      Google.Cloud.Asset.V1p1beta1.SearchAllResourcesResponse

  rpc :SearchAllIamPolicies,
      Google.Cloud.Asset.V1p1beta1.SearchAllIamPoliciesRequest,
      Google.Cloud.Asset.V1p1beta1.SearchAllIamPoliciesResponse
end

defmodule Google.Cloud.Asset.V1p1beta1.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Asset.V1p1beta1.AssetService.Service
end
