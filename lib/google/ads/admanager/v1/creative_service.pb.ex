defmodule Google.Ads.Admanager.V1.Creative do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :creative_id, 7, type: :int64, json_name: "creativeId", deprecated: false
  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false
  field :advertiser, 2, type: :string, deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :preview_url, 4, type: :string, json_name: "previewUrl", deprecated: false
  field :size_label, 9, type: :string, json_name: "sizeLabel", deprecated: false

  field :ad_partner_declaration, 6,
    type: Google.Ads.Admanager.V1.AdPartnerDeclaration,
    json_name: "adPartnerDeclaration",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.GetCreativeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCreativesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCreativesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :creatives, 1, repeated: true, type: Google.Ads.Admanager.V1.Creative
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreativeService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.CreativeService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetCreative, Google.Ads.Admanager.V1.GetCreativeRequest, Google.Ads.Admanager.V1.Creative

  rpc :ListCreatives,
      Google.Ads.Admanager.V1.ListCreativesRequest,
      Google.Ads.Admanager.V1.ListCreativesResponse
end

defmodule Google.Ads.Admanager.V1.CreativeService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.CreativeService.Service
end