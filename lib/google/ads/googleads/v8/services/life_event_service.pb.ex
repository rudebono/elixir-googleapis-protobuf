defmodule Google.Ads.Googleads.V8.Services.GetLifeEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.LifeEventService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.LifeEventService"

  rpc :GetLifeEvent,
      Google.Ads.Googleads.V8.Services.GetLifeEventRequest,
      Google.Ads.Googleads.V8.Resources.LifeEvent
end

defmodule Google.Ads.Googleads.V8.Services.LifeEventService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.LifeEventService.Service
end
