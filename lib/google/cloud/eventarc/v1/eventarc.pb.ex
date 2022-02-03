defmodule Google.Cloud.Eventarc.V1.GetTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.ListTriggersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Eventarc.V1.ListTriggersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          triggers: [Google.Cloud.Eventarc.V1.Trigger.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct triggers: [],
            next_page_token: "",
            unreachable: []

  field :triggers, 1, repeated: true, type: Google.Cloud.Eventarc.V1.Trigger
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Eventarc.V1.CreateTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          trigger: Google.Cloud.Eventarc.V1.Trigger.t() | nil,
          trigger_id: String.t(),
          validate_only: boolean
        }

  defstruct parent: "",
            trigger: nil,
            trigger_id: "",
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :trigger, 2, type: Google.Cloud.Eventarc.V1.Trigger, deprecated: false
  field :trigger_id, 3, type: :string, json_name: "triggerId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.UpdateTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trigger: Google.Cloud.Eventarc.V1.Trigger.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          allow_missing: boolean,
          validate_only: boolean
        }

  defstruct trigger: nil,
            update_mask: nil,
            allow_missing: false,
            validate_only: false

  field :trigger, 1, type: Google.Cloud.Eventarc.V1.Trigger
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.DeleteTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t(),
          allow_missing: boolean,
          validate_only: boolean
        }

  defstruct name: "",
            etag: "",
            allow_missing: false,
            validate_only: false

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.GetChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.ListChannelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :order_by, 4, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Eventarc.V1.ListChannelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channels: [Google.Cloud.Eventarc.V1.Channel.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct channels: [],
            next_page_token: "",
            unreachable: []

  field :channels, 1, repeated: true, type: Google.Cloud.Eventarc.V1.Channel
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Eventarc.V1.CreateChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          channel: Google.Cloud.Eventarc.V1.Channel.t() | nil,
          channel_id: String.t(),
          validate_only: boolean
        }

  defstruct parent: "",
            channel: nil,
            channel_id: "",
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :channel, 2, type: Google.Cloud.Eventarc.V1.Channel, deprecated: false
  field :channel_id, 3, type: :string, json_name: "channelId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.UpdateChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Cloud.Eventarc.V1.Channel.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          validate_only: boolean
        }

  defstruct channel: nil,
            update_mask: nil,
            validate_only: false

  field :channel, 1, type: Google.Cloud.Eventarc.V1.Channel
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.DeleteChannelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          validate_only: boolean
        }

  defstruct name: "",
            validate_only: false

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.GetChannelConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.ListChannelConnectionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Eventarc.V1.ListChannelConnectionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel_connections: [Google.Cloud.Eventarc.V1.ChannelConnection.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct channel_connections: [],
            next_page_token: "",
            unreachable: []

  field :channel_connections, 1,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.ChannelConnection,
    json_name: "channelConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Eventarc.V1.CreateChannelConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          channel_connection: Google.Cloud.Eventarc.V1.ChannelConnection.t() | nil,
          channel_connection_id: String.t()
        }

  defstruct parent: "",
            channel_connection: nil,
            channel_connection_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :channel_connection, 2,
    type: Google.Cloud.Eventarc.V1.ChannelConnection,
    json_name: "channelConnection",
    deprecated: false

  field :channel_connection_id, 3,
    type: :string,
    json_name: "channelConnectionId",
    deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.DeleteChannelConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: ""

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end
defmodule Google.Cloud.Eventarc.V1.Eventarc.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.eventarc.v1.Eventarc"

  rpc :GetTrigger, Google.Cloud.Eventarc.V1.GetTriggerRequest, Google.Cloud.Eventarc.V1.Trigger

  rpc :ListTriggers,
      Google.Cloud.Eventarc.V1.ListTriggersRequest,
      Google.Cloud.Eventarc.V1.ListTriggersResponse

  rpc :CreateTrigger, Google.Cloud.Eventarc.V1.CreateTriggerRequest, Google.Longrunning.Operation

  rpc :UpdateTrigger, Google.Cloud.Eventarc.V1.UpdateTriggerRequest, Google.Longrunning.Operation

  rpc :DeleteTrigger, Google.Cloud.Eventarc.V1.DeleteTriggerRequest, Google.Longrunning.Operation

  rpc :GetChannel, Google.Cloud.Eventarc.V1.GetChannelRequest, Google.Cloud.Eventarc.V1.Channel

  rpc :ListChannels,
      Google.Cloud.Eventarc.V1.ListChannelsRequest,
      Google.Cloud.Eventarc.V1.ListChannelsResponse

  rpc :CreateChannel, Google.Cloud.Eventarc.V1.CreateChannelRequest, Google.Longrunning.Operation

  rpc :UpdateChannel, Google.Cloud.Eventarc.V1.UpdateChannelRequest, Google.Longrunning.Operation

  rpc :DeleteChannel, Google.Cloud.Eventarc.V1.DeleteChannelRequest, Google.Longrunning.Operation

  rpc :GetChannelConnection,
      Google.Cloud.Eventarc.V1.GetChannelConnectionRequest,
      Google.Cloud.Eventarc.V1.ChannelConnection

  rpc :ListChannelConnections,
      Google.Cloud.Eventarc.V1.ListChannelConnectionsRequest,
      Google.Cloud.Eventarc.V1.ListChannelConnectionsResponse

  rpc :CreateChannelConnection,
      Google.Cloud.Eventarc.V1.CreateChannelConnectionRequest,
      Google.Longrunning.Operation

  rpc :DeleteChannelConnection,
      Google.Cloud.Eventarc.V1.DeleteChannelConnectionRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Eventarc.V1.Eventarc.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Eventarc.V1.Eventarc.Service
end
