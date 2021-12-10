defmodule Google.Ads.Googleads.V9.Services.GetDisplayKeywordViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.DisplayKeywordViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.DisplayKeywordViewService"

  rpc :GetDisplayKeywordView,
      Google.Ads.Googleads.V9.Services.GetDisplayKeywordViewRequest,
      Google.Ads.Googleads.V9.Resources.DisplayKeywordView
end

defmodule Google.Ads.Googleads.V9.Services.DisplayKeywordViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.DisplayKeywordViewService.Service
end
