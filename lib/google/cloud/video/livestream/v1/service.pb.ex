defmodule Google.Cloud.Video.Livestream.V1.CreateChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          channel: Google.Cloud.Video.Livestream.V1.Channel.t() | nil,
          channel_id: String.t(),
          request_id: String.t()
        }

  defstruct parent: "",
            channel: nil,
            channel_id: "",
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :channel, 2, type: Google.Cloud.Video.Livestream.V1.Channel, deprecated: false
  field :channel_id, 3, type: :string, json_name: "channelId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.ListChannelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Video.Livestream.V1.ListChannelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channels: [Google.Cloud.Video.Livestream.V1.Channel.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct channels: [],
            next_page_token: "",
            unreachable: []

  field :channels, 1, repeated: true, type: Google.Cloud.Video.Livestream.V1.Channel
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.GetChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Livestream.V1.DeleteChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.UpdateChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          channel: Google.Cloud.Video.Livestream.V1.Channel.t() | nil,
          request_id: String.t()
        }

  defstruct update_mask: nil,
            channel: nil,
            request_id: ""

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :channel, 2, type: Google.Cloud.Video.Livestream.V1.Channel, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.StartChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.StopChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.CreateInputRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          input: Google.Cloud.Video.Livestream.V1.Input.t() | nil,
          input_id: String.t(),
          request_id: String.t()
        }

  defstruct parent: "",
            input: nil,
            input_id: "",
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :input, 2, type: Google.Cloud.Video.Livestream.V1.Input, deprecated: false
  field :input_id, 3, type: :string, json_name: "inputId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.ListInputsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Video.Livestream.V1.ListInputsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: [Google.Cloud.Video.Livestream.V1.Input.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct inputs: [],
            next_page_token: "",
            unreachable: []

  field :inputs, 1, repeated: true, type: Google.Cloud.Video.Livestream.V1.Input
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.GetInputRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Livestream.V1.DeleteInputRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.UpdateInputRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          input: Google.Cloud.Video.Livestream.V1.Input.t() | nil,
          request_id: String.t()
        }

  defstruct update_mask: nil,
            input: nil,
            request_id: ""

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :input, 2, type: Google.Cloud.Video.Livestream.V1.Input, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.CreateEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          event: Google.Cloud.Video.Livestream.V1.Event.t() | nil,
          event_id: String.t(),
          request_id: String.t()
        }

  defstruct parent: "",
            event: nil,
            event_id: "",
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :event, 2, type: Google.Cloud.Video.Livestream.V1.Event, deprecated: false
  field :event_id, 3, type: :string, json_name: "eventId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.ListEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Video.Livestream.V1.ListEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          events: [Google.Cloud.Video.Livestream.V1.Event.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct events: [],
            next_page_token: "",
            unreachable: []

  field :events, 1, repeated: true, type: Google.Cloud.Video.Livestream.V1.Event
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Video.Livestream.V1.GetEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Video.Livestream.V1.DeleteEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct name: "",
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Video.Livestream.V1.ChannelOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Video.Livestream.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            requested_cancellation: false,
            api_version: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false

  field :requested_cancellation, 5,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 6, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Cloud.Video.Livestream.V1.LivestreamService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.video.livestream.v1.LivestreamService"

  rpc :CreateChannel,
      Google.Cloud.Video.Livestream.V1.CreateChannelRequest,
      Google.Longrunning.Operation

  rpc :ListChannels,
      Google.Cloud.Video.Livestream.V1.ListChannelsRequest,
      Google.Cloud.Video.Livestream.V1.ListChannelsResponse

  rpc :GetChannel,
      Google.Cloud.Video.Livestream.V1.GetChannelRequest,
      Google.Cloud.Video.Livestream.V1.Channel

  rpc :DeleteChannel,
      Google.Cloud.Video.Livestream.V1.DeleteChannelRequest,
      Google.Longrunning.Operation

  rpc :UpdateChannel,
      Google.Cloud.Video.Livestream.V1.UpdateChannelRequest,
      Google.Longrunning.Operation

  rpc :StartChannel,
      Google.Cloud.Video.Livestream.V1.StartChannelRequest,
      Google.Longrunning.Operation

  rpc :StopChannel,
      Google.Cloud.Video.Livestream.V1.StopChannelRequest,
      Google.Longrunning.Operation

  rpc :CreateInput,
      Google.Cloud.Video.Livestream.V1.CreateInputRequest,
      Google.Longrunning.Operation

  rpc :ListInputs,
      Google.Cloud.Video.Livestream.V1.ListInputsRequest,
      Google.Cloud.Video.Livestream.V1.ListInputsResponse

  rpc :GetInput,
      Google.Cloud.Video.Livestream.V1.GetInputRequest,
      Google.Cloud.Video.Livestream.V1.Input

  rpc :DeleteInput,
      Google.Cloud.Video.Livestream.V1.DeleteInputRequest,
      Google.Longrunning.Operation

  rpc :UpdateInput,
      Google.Cloud.Video.Livestream.V1.UpdateInputRequest,
      Google.Longrunning.Operation

  rpc :CreateEvent,
      Google.Cloud.Video.Livestream.V1.CreateEventRequest,
      Google.Cloud.Video.Livestream.V1.Event

  rpc :ListEvents,
      Google.Cloud.Video.Livestream.V1.ListEventsRequest,
      Google.Cloud.Video.Livestream.V1.ListEventsResponse

  rpc :GetEvent,
      Google.Cloud.Video.Livestream.V1.GetEventRequest,
      Google.Cloud.Video.Livestream.V1.Event

  rpc :DeleteEvent, Google.Cloud.Video.Livestream.V1.DeleteEventRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Video.Livestream.V1.LivestreamService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Video.Livestream.V1.LivestreamService.Service
end
