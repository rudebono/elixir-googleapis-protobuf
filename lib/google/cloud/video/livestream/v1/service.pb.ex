defmodule Google.Cloud.Video.Livestream.V1.CreateChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :channel, 2, type: Google.Cloud.Video.Livestream.V1.Channel, deprecated: false
  field :channel_id, 3, type: :string, json_name: "channelId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Livestream.V1.ListChannelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Video.Livestream.V1.ListChannelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :channels, 1, repeated: true, type: Google.Cloud.Video.Livestream.V1.Channel
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.GetChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.DeleteChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
  field :force, 3, type: :bool
end

defmodule Google.Cloud.Video.Livestream.V1.UpdateChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :channel, 2, type: Google.Cloud.Video.Livestream.V1.Channel, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Livestream.V1.StartChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Livestream.V1.StopChannelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Livestream.V1.CreateInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :input, 2, type: Google.Cloud.Video.Livestream.V1.Input, deprecated: false
  field :input_id, 3, type: :string, json_name: "inputId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Livestream.V1.ListInputsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Video.Livestream.V1.ListInputsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :inputs, 1, repeated: true, type: Google.Cloud.Video.Livestream.V1.Input
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.GetInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.DeleteInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Livestream.V1.UpdateInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :input, 2, type: Google.Cloud.Video.Livestream.V1.Input, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Livestream.V1.CreateEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :event, 2, type: Google.Cloud.Video.Livestream.V1.Event, deprecated: false
  field :event_id, 3, type: :string, json_name: "eventId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Livestream.V1.ListEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Video.Livestream.V1.ListEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :events, 1, repeated: true, type: Google.Cloud.Video.Livestream.V1.Event
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Video.Livestream.V1.GetEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Video.Livestream.V1.DeleteEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Video.Livestream.V1.ChannelOperationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Video.Livestream.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use GRPC.Service,
    name: "google.cloud.video.livestream.v1.LivestreamService",
    protoc_gen_elixir_version: "0.12.0"

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