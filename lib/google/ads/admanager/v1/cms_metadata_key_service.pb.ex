defmodule Google.Ads.Admanager.V1.GetCmsMetadataKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCmsMetadataKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCmsMetadataKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cms_metadata_keys, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CmsMetadataKey,
    json_name: "cmsMetadataKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CmsMetadataKeyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.CmsMetadataKeyService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetCmsMetadataKey,
      Google.Ads.Admanager.V1.GetCmsMetadataKeyRequest,
      Google.Ads.Admanager.V1.CmsMetadataKey

  rpc :ListCmsMetadataKeys,
      Google.Ads.Admanager.V1.ListCmsMetadataKeysRequest,
      Google.Ads.Admanager.V1.ListCmsMetadataKeysResponse
end

defmodule Google.Ads.Admanager.V1.CmsMetadataKeyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.CmsMetadataKeyService.Service
end
