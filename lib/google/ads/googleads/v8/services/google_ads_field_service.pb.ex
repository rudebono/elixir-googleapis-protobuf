defmodule Google.Ads.Googleads.V8.Services.GetGoogleAdsFieldRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SearchGoogleAdsFieldsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:query, :page_token, :page_size]

  field :query, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Ads.Googleads.V8.Services.SearchGoogleAdsFieldsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8.Resources.GoogleAdsField.t()],
          next_page_token: String.t(),
          total_results_count: integer
        }

  defstruct [:results, :next_page_token, :total_results_count]

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V8.Resources.GoogleAdsField
  field :next_page_token, 2, type: :string
  field :total_results_count, 3, type: :int64
end

defmodule Google.Ads.Googleads.V8.Services.GoogleAdsFieldService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.GoogleAdsFieldService"

  rpc :GetGoogleAdsField,
      Google.Ads.Googleads.V8.Services.GetGoogleAdsFieldRequest,
      Google.Ads.Googleads.V8.Resources.GoogleAdsField

  rpc :SearchGoogleAdsFields,
      Google.Ads.Googleads.V8.Services.SearchGoogleAdsFieldsRequest,
      Google.Ads.Googleads.V8.Services.SearchGoogleAdsFieldsResponse
end

defmodule Google.Ads.Googleads.V8.Services.GoogleAdsFieldService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.GoogleAdsFieldService.Service
end
