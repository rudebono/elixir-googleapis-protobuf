defmodule Google.Ads.Googleads.V9.Services.GetLifeEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.LifeEventService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.LifeEventService"

  rpc :GetLifeEvent,
      Google.Ads.Googleads.V9.Services.GetLifeEventRequest,
      Google.Ads.Googleads.V9.Resources.LifeEvent
end

defmodule Google.Ads.Googleads.V9.Services.LifeEventService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.LifeEventService.Service
end
