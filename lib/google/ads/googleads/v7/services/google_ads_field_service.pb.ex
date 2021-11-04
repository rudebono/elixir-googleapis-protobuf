defmodule Google.Ads.Googleads.V7.Services.GetGoogleAdsFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.SearchGoogleAdsFieldsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:query, :page_token, :page_size]

  field :query, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.SearchGoogleAdsFieldsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V7.Resources.GoogleAdsField.t()],
          next_page_token: String.t(),
          total_results_count: integer
        }

  defstruct [:results, :next_page_token, :total_results_count]

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V7.Resources.GoogleAdsField
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_results_count, 3, type: :int64, json_name: "totalResultsCount"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.GoogleAdsFieldService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.GoogleAdsFieldService"

  rpc :GetGoogleAdsField,
      Google.Ads.Googleads.V7.Services.GetGoogleAdsFieldRequest,
      Google.Ads.Googleads.V7.Resources.GoogleAdsField

  rpc :SearchGoogleAdsFields,
      Google.Ads.Googleads.V7.Services.SearchGoogleAdsFieldsRequest,
      Google.Ads.Googleads.V7.Services.SearchGoogleAdsFieldsResponse
end

defmodule Google.Ads.Googleads.V7.Services.GoogleAdsFieldService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.GoogleAdsFieldService.Service
end
