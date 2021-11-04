defmodule Google.Ads.Googleads.V8.Services.GetDynamicSearchAdsSearchTermViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.DynamicSearchAdsSearchTermViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.DynamicSearchAdsSearchTermViewService"

  rpc :GetDynamicSearchAdsSearchTermView,
      Google.Ads.Googleads.V8.Services.GetDynamicSearchAdsSearchTermViewRequest,
      Google.Ads.Googleads.V8.Resources.DynamicSearchAdsSearchTermView
end

defmodule Google.Ads.Googleads.V8.Services.DynamicSearchAdsSearchTermViewService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.DynamicSearchAdsSearchTermViewService.Service
end
