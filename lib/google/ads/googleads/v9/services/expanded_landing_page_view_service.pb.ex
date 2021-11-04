defmodule Google.Ads.Googleads.V9.Services.GetExpandedLandingPageViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.ExpandedLandingPageViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.ExpandedLandingPageViewService"

  rpc :GetExpandedLandingPageView,
      Google.Ads.Googleads.V9.Services.GetExpandedLandingPageViewRequest,
      Google.Ads.Googleads.V9.Resources.ExpandedLandingPageView
end

defmodule Google.Ads.Googleads.V9.Services.ExpandedLandingPageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.ExpandedLandingPageViewService.Service
end
