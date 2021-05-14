defmodule Google.Cloud.Talent.V4.CreateClientEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          client_event: Google.Cloud.Talent.V4.ClientEvent.t() | nil
        }

  defstruct [:parent, :client_event]

  field :parent, 1, type: :string
  field :client_event, 2, type: Google.Cloud.Talent.V4.ClientEvent
end

defmodule Google.Cloud.Talent.V4.EventService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.talent.v4.EventService"

  rpc :CreateClientEvent,
      Google.Cloud.Talent.V4.CreateClientEventRequest,
      Google.Cloud.Talent.V4.ClientEvent
end

defmodule Google.Cloud.Talent.V4.EventService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4.EventService.Service
end
