defmodule Google.Cloud.Asset.V1p5beta1.ContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CONTENT_TYPE_UNSPECIFIED
          | :RESOURCE
          | :IAM_POLICY
          | :ORG_POLICY
          | :ACCESS_POLICY

  field :CONTENT_TYPE_UNSPECIFIED, 0
  field :RESOURCE, 1
  field :IAM_POLICY, 2
  field :ORG_POLICY, 4
  field :ACCESS_POLICY, 5
end
defmodule Google.Cloud.Asset.V1p5beta1.ListAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          asset_types: [String.t()],
          content_type: Google.Cloud.Asset.V1p5beta1.ContentType.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            read_time: nil,
            asset_types: [],
            content_type: :CONTENT_TYPE_UNSPECIFIED,
            page_size: 0,
            page_token: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          read_time: Google.Protobuf.Timestamp.t() | nil,
          assets: [Google.Cloud.Asset.V1p5beta1.Asset.t()],
          next_page_token: String.t()
        }

  defstruct read_time: nil,
            assets: [],
            next_page_token: ""

  field :read_time, 1, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :assets, 2, repeated: true, type: Google.Cloud.Asset.V1p5beta1.Asset
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Asset.V1p5beta1.AssetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.asset.v1p5beta1.AssetService"

  rpc :ListAssets,
      Google.Cloud.Asset.V1p5beta1.ListAssetsRequest,
      Google.Cloud.Asset.V1p5beta1.ListAssetsResponse
end

defmodule Google.Cloud.Asset.V1p5beta1.AssetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Asset.V1p5beta1.AssetService.Service
end
