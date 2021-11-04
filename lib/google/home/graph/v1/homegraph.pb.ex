defmodule Google.Home.Graph.V1.RequestSyncDevicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent_user_id: String.t(),
          async: boolean
        }

  defstruct [:agent_user_id, :async]

  field :agent_user_id, 1, type: :string, json_name: "agentUserId"
  field :async, 2, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.RequestSyncDevicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.ReportStateAndNotificationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          event_id: String.t(),
          agent_user_id: String.t(),
          follow_up_token: String.t(),
          payload: Google.Home.Graph.V1.StateAndNotificationPayload.t() | nil
        }

  defstruct [:request_id, :event_id, :agent_user_id, :follow_up_token, :payload]

  field :request_id, 1, type: :string, json_name: "requestId"
  field :event_id, 4, type: :string, json_name: "eventId"
  field :agent_user_id, 2, type: :string, json_name: "agentUserId"
  field :follow_up_token, 5, type: :string, deprecated: true, json_name: "followUpToken"
  field :payload, 3, type: Google.Home.Graph.V1.StateAndNotificationPayload

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.ReportStateAndNotificationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t()
        }

  defstruct [:request_id]

  field :request_id, 1, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.StateAndNotificationPayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          devices: Google.Home.Graph.V1.ReportStateAndNotificationDevice.t() | nil
        }

  defstruct [:devices]

  field :devices, 1, type: Google.Home.Graph.V1.ReportStateAndNotificationDevice

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.ReportStateAndNotificationDevice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          states: Google.Protobuf.Struct.t() | nil,
          notifications: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:states, :notifications]

  field :states, 1, type: Google.Protobuf.Struct
  field :notifications, 2, type: Google.Protobuf.Struct

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.DeleteAgentUserRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          agent_user_id: String.t()
        }

  defstruct [:request_id, :agent_user_id]

  field :request_id, 1, type: :string, json_name: "requestId"
  field :agent_user_id, 2, type: :string, json_name: "agentUserId"

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.QueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          agent_user_id: String.t(),
          inputs: [Google.Home.Graph.V1.QueryRequestInput.t()]
        }

  defstruct [:request_id, :agent_user_id, :inputs]

  field :request_id, 1, type: :string, json_name: "requestId"
  field :agent_user_id, 2, type: :string, json_name: "agentUserId"
  field :inputs, 3, repeated: true, type: Google.Home.Graph.V1.QueryRequestInput

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.QueryRequestInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: Google.Home.Graph.V1.QueryRequestPayload.t() | nil
        }

  defstruct [:payload]

  field :payload, 1, type: Google.Home.Graph.V1.QueryRequestPayload

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.QueryRequestPayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          devices: [Google.Home.Graph.V1.AgentDeviceId.t()]
        }

  defstruct [:devices]

  field :devices, 1, repeated: true, type: Google.Home.Graph.V1.AgentDeviceId

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.AgentDeviceId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }

  defstruct [:id]

  field :id, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.QueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          payload: Google.Home.Graph.V1.QueryResponsePayload.t() | nil
        }

  defstruct [:request_id, :payload]

  field :request_id, 1, type: :string, json_name: "requestId"
  field :payload, 2, type: Google.Home.Graph.V1.QueryResponsePayload

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.QueryResponsePayload.DevicesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Struct

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.QueryResponsePayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          devices: %{String.t() => Google.Protobuf.Struct.t() | nil}
        }

  defstruct [:devices]

  field :devices, 1,
    repeated: true,
    type: Google.Home.Graph.V1.QueryResponsePayload.DevicesEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.SyncRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          agent_user_id: String.t()
        }

  defstruct [:request_id, :agent_user_id]

  field :request_id, 1, type: :string, json_name: "requestId"
  field :agent_user_id, 2, type: :string, json_name: "agentUserId"

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.SyncResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_id: String.t(),
          payload: Google.Home.Graph.V1.SyncResponsePayload.t() | nil
        }

  defstruct [:request_id, :payload]

  field :request_id, 1, type: :string, json_name: "requestId"
  field :payload, 2, type: Google.Home.Graph.V1.SyncResponsePayload

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.SyncResponsePayload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agent_user_id: String.t(),
          devices: [Google.Home.Graph.V1.Device.t()]
        }

  defstruct [:agent_user_id, :devices]

  field :agent_user_id, 1, type: :string, json_name: "agentUserId"
  field :devices, 2, repeated: true, type: Google.Home.Graph.V1.Device

  def transform_module(), do: nil
end

defmodule Google.Home.Graph.V1.HomeGraphApiService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.home.graph.v1.HomeGraphApiService"

  rpc :RequestSyncDevices,
      Google.Home.Graph.V1.RequestSyncDevicesRequest,
      Google.Home.Graph.V1.RequestSyncDevicesResponse

  rpc :ReportStateAndNotification,
      Google.Home.Graph.V1.ReportStateAndNotificationRequest,
      Google.Home.Graph.V1.ReportStateAndNotificationResponse

  rpc :DeleteAgentUser, Google.Home.Graph.V1.DeleteAgentUserRequest, Google.Protobuf.Empty

  rpc :Query, Google.Home.Graph.V1.QueryRequest, Google.Home.Graph.V1.QueryResponse

  rpc :Sync, Google.Home.Graph.V1.SyncRequest, Google.Home.Graph.V1.SyncResponse
end

defmodule Google.Home.Graph.V1.HomeGraphApiService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Home.Graph.V1.HomeGraphApiService.Service
end
