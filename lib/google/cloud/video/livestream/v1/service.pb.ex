defmodule Google.Cloud.Video.Livestream.V1.CreateChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          channel: Google.Cloud.Video.Livestream.V1.Channel.t() | nil,
          channel_id: String.t(),
          request_id: String.t()
        }

  defstruct [:parent, :channel, :channel_id, :request_id]

  field :parent, 1, type: :string
  field :channel, 2, type: Google.Cloud.Video.Livestream.V1.Channel
  field :channel_id, 3, type: :string, json_name: "channelId"
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
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

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.ListChannelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channels: [Google.Cloud.Video.Livestream.V1.Channel.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:channels, :next_page_token, :unreachable]

  field :channels, 1, repeated: true, type: Google.Cloud.Video.Livestream.V1.Channel
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.GetChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.DeleteChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.UpdateChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          channel: Google.Cloud.Video.Livestream.V1.Channel.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :channel, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :channel, 2, type: Google.Cloud.Video.Livestream.V1.Channel
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.StartChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.StopChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
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

  defstruct [:parent, :input, :input_id, :request_id]

  field :parent, 1, type: :string
  field :input, 2, type: Google.Cloud.Video.Livestream.V1.Input
  field :input_id, 3, type: :string, json_name: "inputId"
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
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

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.ListInputsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: [Google.Cloud.Video.Livestream.V1.Input.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:inputs, :next_page_token, :unreachable]

  field :inputs, 1, repeated: true, type: Google.Cloud.Video.Livestream.V1.Input
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.GetInputRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.DeleteInputRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.UpdateInputRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          input: Google.Cloud.Video.Livestream.V1.Input.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :input, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :input, 2, type: Google.Cloud.Video.Livestream.V1.Input
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
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

  defstruct [:parent, :event, :event_id, :request_id]

  field :parent, 1, type: :string
  field :event, 2, type: Google.Cloud.Video.Livestream.V1.Event
  field :event_id, 3, type: :string, json_name: "eventId"
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
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

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.ListEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          events: [Google.Cloud.Video.Livestream.V1.Event.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:events, :next_page_token, :unreachable]

  field :events, 1, repeated: true, type: Google.Cloud.Video.Livestream.V1.Event
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.GetEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.DeleteEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Video.Livestream.V1.ChannelOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
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

  defstruct [:create_time, :end_time, :target, :verb, :requested_cancellation, :api_version]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :requested_cancellation, 5, type: :bool, json_name: "requestedCancellation"
  field :api_version, 6, type: :string, json_name: "apiVersion"

  def transform_module(), do: nil
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
