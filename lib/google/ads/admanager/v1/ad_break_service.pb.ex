defmodule Google.Ads.Admanager.V1.GetAdBreakRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdBreaksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdBreaksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_breaks, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.AdBreak,
    json_name: "adBreaks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreateAdBreakRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :ad_break, 2,
    type: Google.Ads.Admanager.V1.AdBreak,
    json_name: "adBreak",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.UpdateAdBreakRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_break, 1,
    type: Google.Ads.Admanager.V1.AdBreak,
    json_name: "adBreak",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.DeleteAdBreakRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.AdBreakService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.AdBreakService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetAdBreak, Google.Ads.Admanager.V1.GetAdBreakRequest, Google.Ads.Admanager.V1.AdBreak

  rpc :ListAdBreaks,
      Google.Ads.Admanager.V1.ListAdBreaksRequest,
      Google.Ads.Admanager.V1.ListAdBreaksResponse

  rpc :CreateAdBreak,
      Google.Ads.Admanager.V1.CreateAdBreakRequest,
      Google.Ads.Admanager.V1.AdBreak

  rpc :UpdateAdBreak,
      Google.Ads.Admanager.V1.UpdateAdBreakRequest,
      Google.Ads.Admanager.V1.AdBreak

  rpc :DeleteAdBreak, Google.Ads.Admanager.V1.DeleteAdBreakRequest, Google.Protobuf.Empty
end

defmodule Google.Ads.Admanager.V1.AdBreakService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.AdBreakService.Service
end
