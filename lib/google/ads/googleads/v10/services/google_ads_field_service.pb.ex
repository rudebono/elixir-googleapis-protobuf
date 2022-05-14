defmodule Google.Ads.Googleads.V10.Services.GetGoogleAdsFieldRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.SearchGoogleAdsFieldsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :query, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Ads.Googleads.V10.Services.SearchGoogleAdsFieldsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V10.Resources.GoogleAdsField
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_results_count, 3, type: :int64, json_name: "totalResultsCount"
end
defmodule Google.Ads.Googleads.V10.Services.GoogleAdsFieldService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v10.services.GoogleAdsFieldService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetGoogleAdsField,
      Google.Ads.Googleads.V10.Services.GetGoogleAdsFieldRequest,
      Google.Ads.Googleads.V10.Resources.GoogleAdsField

  rpc :SearchGoogleAdsFields,
      Google.Ads.Googleads.V10.Services.SearchGoogleAdsFieldsRequest,
      Google.Ads.Googleads.V10.Services.SearchGoogleAdsFieldsResponse
end

defmodule Google.Ads.Googleads.V10.Services.GoogleAdsFieldService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.GoogleAdsFieldService.Service
end
