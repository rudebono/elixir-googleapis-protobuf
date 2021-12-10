defmodule Google.Ads.Googleads.V8.Services.GetGenderViewRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.GenderViewService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.GenderViewService"

  rpc :GetGenderView,
      Google.Ads.Googleads.V8.Services.GetGenderViewRequest,
      Google.Ads.Googleads.V8.Resources.GenderView
end

defmodule Google.Ads.Googleads.V8.Services.GenderViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.GenderViewService.Service
end
