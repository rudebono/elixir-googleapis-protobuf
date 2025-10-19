defmodule Google.Ads.Googleads.V22.Services.SuggestBrandsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :brand_prefix, 2,
    proto3_optional: true,
    type: :string,
    json_name: "brandPrefix",
    deprecated: false

  field :selected_brands, 3,
    repeated: true,
    type: :string,
    json_name: "selectedBrands",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.SuggestBrandsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :brands, 1, repeated: true, type: Google.Ads.Googleads.V22.Services.BrandSuggestion
end

defmodule Google.Ads.Googleads.V22.Services.BrandSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :urls, 3, repeated: true, type: :string
  field :state, 4, type: Google.Ads.Googleads.V22.Enums.BrandStateEnum.BrandState, enum: true
end

defmodule Google.Ads.Googleads.V22.Services.BrandSuggestionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v22.services.BrandSuggestionService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :SuggestBrands,
      Google.Ads.Googleads.V22.Services.SuggestBrandsRequest,
      Google.Ads.Googleads.V22.Services.SuggestBrandsResponse
end

defmodule Google.Ads.Googleads.V22.Services.BrandSuggestionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V22.Services.BrandSuggestionService.Service
end
