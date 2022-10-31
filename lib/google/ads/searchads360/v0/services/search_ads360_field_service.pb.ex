defmodule Google.Ads.Searchads360.V0.Services.GetSearchAds360FieldRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360FieldsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :query, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end

defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360FieldsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Searchads360.V0.Resources.SearchAds360Field
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_results_count, 3, type: :int64, json_name: "totalResultsCount"
end

defmodule Google.Ads.Searchads360.V0.Services.SearchAds360FieldService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.searchads360.v0.services.SearchAds360FieldService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetSearchAds360Field,
      Google.Ads.Searchads360.V0.Services.GetSearchAds360FieldRequest,
      Google.Ads.Searchads360.V0.Resources.SearchAds360Field

  rpc :SearchSearchAds360Fields,
      Google.Ads.Searchads360.V0.Services.SearchSearchAds360FieldsRequest,
      Google.Ads.Searchads360.V0.Services.SearchSearchAds360FieldsResponse
end

defmodule Google.Ads.Searchads360.V0.Services.SearchAds360FieldService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Searchads360.V0.Services.SearchAds360FieldService.Service
end