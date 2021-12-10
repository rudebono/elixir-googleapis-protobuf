defmodule Google.Cloud.Retail.V2beta.RejoinUserEventsRequest.UserEventRejoinScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :USER_EVENT_REJOIN_SCOPE_UNSPECIFIED | :JOINED_EVENTS | :UNJOINED_EVENTS

  field :USER_EVENT_REJOIN_SCOPE_UNSPECIFIED, 0
  field :JOINED_EVENTS, 1
  field :UNJOINED_EVENTS, 2
end
defmodule Google.Cloud.Retail.V2beta.WriteUserEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          user_event: Google.Cloud.Retail.V2beta.UserEvent.t() | nil
        }

  defstruct parent: "",
            user_event: nil

  field :parent, 1, type: :string, deprecated: false

  field :user_event, 2,
    type: Google.Cloud.Retail.V2beta.UserEvent,
    json_name: "userEvent",
    deprecated: false
end
defmodule Google.Cloud.Retail.V2beta.CollectUserEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          user_event: String.t(),
          uri: String.t(),
          ets: integer
        }

  defstruct parent: "",
            user_event: "",
            uri: "",
            ets: 0

  field :parent, 1, type: :string, deprecated: false
  field :user_event, 2, type: :string, json_name: "userEvent", deprecated: false
  field :uri, 3, type: :string
  field :ets, 4, type: :int64
end
defmodule Google.Cloud.Retail.V2beta.RejoinUserEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          user_event_rejoin_scope:
            Google.Cloud.Retail.V2beta.RejoinUserEventsRequest.UserEventRejoinScope.t()
        }

  defstruct parent: "",
            user_event_rejoin_scope: :USER_EVENT_REJOIN_SCOPE_UNSPECIFIED

  field :parent, 1, type: :string, deprecated: false

  field :user_event_rejoin_scope, 2,
    type: Google.Cloud.Retail.V2beta.RejoinUserEventsRequest.UserEventRejoinScope,
    json_name: "userEventRejoinScope",
    enum: true
end
defmodule Google.Cloud.Retail.V2beta.RejoinUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rejoined_user_events_count: integer
        }

  defstruct rejoined_user_events_count: 0

  field :rejoined_user_events_count, 1, type: :int64, json_name: "rejoinedUserEventsCount"
end
defmodule Google.Cloud.Retail.V2beta.RejoinUserEventsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Retail.V2beta.UserEventService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2beta.UserEventService"

  rpc :WriteUserEvent,
      Google.Cloud.Retail.V2beta.WriteUserEventRequest,
      Google.Cloud.Retail.V2beta.UserEvent

  rpc :CollectUserEvent, Google.Cloud.Retail.V2beta.CollectUserEventRequest, Google.Api.HttpBody

  rpc :PurgeUserEvents,
      Google.Cloud.Retail.V2beta.PurgeUserEventsRequest,
      Google.Longrunning.Operation

  rpc :ImportUserEvents,
      Google.Cloud.Retail.V2beta.ImportUserEventsRequest,
      Google.Longrunning.Operation

  rpc :RejoinUserEvents,
      Google.Cloud.Retail.V2beta.RejoinUserEventsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2beta.UserEventService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.UserEventService.Service
end
