defmodule Google.Ads.Googleads.V13.Services.ListMerchantCenterLinksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.ListMerchantCenterLinksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :merchant_center_links, 1,
    repeated: true,
    type: Google.Ads.Googleads.V13.Resources.MerchantCenterLink,
    json_name: "merchantCenterLinks"
end

defmodule Google.Ads.Googleads.V13.Services.GetMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.MutateMerchantCenterLinkRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V13.Services.MerchantCenterLinkOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.MerchantCenterLinkOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V13.Resources.MerchantCenterLink, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.MutateMerchantCenterLinkResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 2, type: Google.Ads.Googleads.V13.Services.MutateMerchantCenterLinkResult
end

defmodule Google.Ads.Googleads.V13.Services.MutateMerchantCenterLinkResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.MerchantCenterLinkService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v13.services.MerchantCenterLinkService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListMerchantCenterLinks,
      Google.Ads.Googleads.V13.Services.ListMerchantCenterLinksRequest,
      Google.Ads.Googleads.V13.Services.ListMerchantCenterLinksResponse

  rpc :GetMerchantCenterLink,
      Google.Ads.Googleads.V13.Services.GetMerchantCenterLinkRequest,
      Google.Ads.Googleads.V13.Resources.MerchantCenterLink

  rpc :MutateMerchantCenterLink,
      Google.Ads.Googleads.V13.Services.MutateMerchantCenterLinkRequest,
      Google.Ads.Googleads.V13.Services.MutateMerchantCenterLinkResponse
end

defmodule Google.Ads.Googleads.V13.Services.MerchantCenterLinkService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V13.Services.MerchantCenterLinkService.Service
end