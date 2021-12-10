defmodule Google.Ads.Googleads.V7.Services.GetExpandedLandingPageViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.ExpandedLandingPageViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.ExpandedLandingPageViewService"

  rpc :GetExpandedLandingPageView,
      Google.Ads.Googleads.V7.Services.GetExpandedLandingPageViewRequest,
      Google.Ads.Googleads.V7.Resources.ExpandedLandingPageView
end

defmodule Google.Ads.Googleads.V7.Services.ExpandedLandingPageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.ExpandedLandingPageViewService.Service
end
