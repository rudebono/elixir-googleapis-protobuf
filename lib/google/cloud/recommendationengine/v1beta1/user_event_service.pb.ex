defmodule Google.Cloud.Recommendationengine.V1beta1.PurgeUserEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          force: boolean
        }

  defstruct [:parent, :filter, :force]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :force, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.PurgeUserEventsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:operation_name, :create_time]

  field :operation_name, 1, type: :string, json_name: "operationName"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.PurgeUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purged_events_count: integer,
          user_events_sample: [Google.Cloud.Recommendationengine.V1beta1.UserEvent.t()]
        }

  defstruct [:purged_events_count, :user_events_sample]

  field :purged_events_count, 1, type: :int64, json_name: "purgedEventsCount"

  field :user_events_sample, 2,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.UserEvent,
    json_name: "userEventsSample"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.WriteUserEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          user_event: Google.Cloud.Recommendationengine.V1beta1.UserEvent.t() | nil
        }

  defstruct [:parent, :user_event]

  field :parent, 1, type: :string

  field :user_event, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.UserEvent,
    json_name: "userEvent"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CollectUserEventRequest do
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
  field :user_event, 2, type: :string, json_name: "userEvent"
  field :uri, 3, type: :string
  field :ets, 4, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListUserEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_events: [Google.Cloud.Recommendationengine.V1beta1.UserEvent.t()],
          next_page_token: String.t()
        }

  defstruct [:user_events, :next_page_token]

  field :user_events, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.UserEvent,
    json_name: "userEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.UserEventService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.recommendationengine.v1beta1.UserEventService"

  rpc :WriteUserEvent,
      Google.Cloud.Recommendationengine.V1beta1.WriteUserEventRequest,
      Google.Cloud.Recommendationengine.V1beta1.UserEvent

  rpc :CollectUserEvent,
      Google.Cloud.Recommendationengine.V1beta1.CollectUserEventRequest,
      Google.Api.HttpBody

  rpc :ListUserEvents,
      Google.Cloud.Recommendationengine.V1beta1.ListUserEventsRequest,
      Google.Cloud.Recommendationengine.V1beta1.ListUserEventsResponse

  rpc :PurgeUserEvents,
      Google.Cloud.Recommendationengine.V1beta1.PurgeUserEventsRequest,
      Google.Longrunning.Operation

  rpc :ImportUserEvents,
      Google.Cloud.Recommendationengine.V1beta1.ImportUserEventsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Recommendationengine.V1beta1.UserEventService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Recommendationengine.V1beta1.UserEventService.Service
end
