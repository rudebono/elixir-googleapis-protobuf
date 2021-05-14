defmodule Google.Cloud.Retail.V2.RejoinUserEventsRequest.UserEventRejoinScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :USER_EVENT_REJOIN_SCOPE_UNSPECIFIED | :JOINED_EVENTS | :UNJOINED_EVENTS

  field :USER_EVENT_REJOIN_SCOPE_UNSPECIFIED, 0

  field :JOINED_EVENTS, 1

  field :UNJOINED_EVENTS, 2
end

defmodule Google.Cloud.Retail.V2.WriteUserEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          user_event: Google.Cloud.Retail.V2.UserEvent.t() | nil
        }

  defstruct [:parent, :user_event]

  field :parent, 1, type: :string
  field :user_event, 2, type: Google.Cloud.Retail.V2.UserEvent
end

defmodule Google.Cloud.Retail.V2.CollectUserEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          user_event: String.t(),
          uri: String.t(),
          ets: integer
        }

  defstruct [:parent, :user_event, :uri, :ets]

  field :parent, 1, type: :string
  field :user_event, 2, type: :string
  field :uri, 3, type: :string
  field :ets, 4, type: :int64
end

defmodule Google.Cloud.Retail.V2.RejoinUserEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          user_event_rejoin_scope:
            Google.Cloud.Retail.V2.RejoinUserEventsRequest.UserEventRejoinScope.t()
        }

  defstruct [:parent, :user_event_rejoin_scope]

  field :parent, 1, type: :string

  field :user_event_rejoin_scope, 2,
    type: Google.Cloud.Retail.V2.RejoinUserEventsRequest.UserEventRejoinScope,
    enum: true
end

defmodule Google.Cloud.Retail.V2.RejoinUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rejoined_user_events_count: integer
        }

  defstruct [:rejoined_user_events_count]

  field :rejoined_user_events_count, 1, type: :int64
end

defmodule Google.Cloud.Retail.V2.RejoinUserEventsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Retail.V2.UserEventService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2.UserEventService"

  rpc :WriteUserEvent,
      Google.Cloud.Retail.V2.WriteUserEventRequest,
      Google.Cloud.Retail.V2.UserEvent

  rpc :CollectUserEvent, Google.Cloud.Retail.V2.CollectUserEventRequest, Google.Api.HttpBody

  rpc :PurgeUserEvents,
      Google.Cloud.Retail.V2.PurgeUserEventsRequest,
      Google.Longrunning.Operation

  rpc :ImportUserEvents,
      Google.Cloud.Retail.V2.ImportUserEventsRequest,
      Google.Longrunning.Operation

  rpc :RejoinUserEvents,
      Google.Cloud.Retail.V2.RejoinUserEventsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Retail.V2.UserEventService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2.UserEventService.Service
end
