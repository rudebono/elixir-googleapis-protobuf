defmodule Google.Ads.Googleads.V9.Services.GetWebpageViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.WebpageViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.WebpageViewService"

  rpc :GetWebpageView,
      Google.Ads.Googleads.V9.Services.GetWebpageViewRequest,
      Google.Ads.Googleads.V9.Resources.WebpageView
end

defmodule Google.Ads.Googleads.V9.Services.WebpageViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.WebpageViewService.Service
end
