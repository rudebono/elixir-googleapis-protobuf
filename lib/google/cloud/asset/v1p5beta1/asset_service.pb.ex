defmodule Google.Cloud.Asset.V1p5beta1.ContentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTENT_TYPE_UNSPECIFIED, 0
  field :RESOURCE, 1
  field :IAM_POLICY, 2
  field :ORG_POLICY, 4
  field :ACCESS_POLICY, 5
end

defmodule Google.Cloud.Asset.V1p5beta1.ListAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :asset_types, 3, repeated: true, type: :string, json_name: "assetTypes"

  field :content_type, 4,
    type: Google.Cloud.Asset.V1p5beta1.ContentType,
    json_name: "contentType",
    enum: true

  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Asset.V1p5beta1.ListAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :read_time, 1, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :assets, 2, repeated: true, type: Google.Cloud.Asset.V1p5beta1.Asset
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Asset.V1p5beta1.AssetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.asset.v1p5beta1.AssetService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListAssets,
      Google.Cloud.Asset.V1p5beta1.ListAssetsRequest,
      Google.Cloud.Asset.V1p5beta1.ListAssetsResponse
end

defmodule Google.Cloud.Asset.V1p5beta1.AssetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Asset.V1p5beta1.AssetService.Service
end
