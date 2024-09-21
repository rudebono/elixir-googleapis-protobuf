defmodule Google.Home.Graph.V1.RequestSyncDevicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :agent_user_id, 1, type: :string, json_name: "agentUserId", deprecated: false
  field :async, 2, type: :bool, deprecated: false
end

defmodule Google.Home.Graph.V1.RequestSyncDevicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Home.Graph.V1.ReportStateAndNotificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :event_id, 4, type: :string, json_name: "eventId"
  field :agent_user_id, 2, type: :string, json_name: "agentUserId", deprecated: false
  field :follow_up_token, 5, type: :string, json_name: "followUpToken", deprecated: true
  field :payload, 3, type: Google.Home.Graph.V1.StateAndNotificationPayload, deprecated: false
end

defmodule Google.Home.Graph.V1.ReportStateAndNotificationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
end

defmodule Google.Home.Graph.V1.StateAndNotificationPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :devices, 1, type: Google.Home.Graph.V1.ReportStateAndNotificationDevice
end

defmodule Google.Home.Graph.V1.ReportStateAndNotificationDevice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :states, 1, type: Google.Protobuf.Struct
  field :notifications, 2, type: Google.Protobuf.Struct
end

defmodule Google.Home.Graph.V1.DeleteAgentUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :agent_user_id, 2, type: :string, json_name: "agentUserId", deprecated: false
end

defmodule Google.Home.Graph.V1.QueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :agent_user_id, 2, type: :string, json_name: "agentUserId", deprecated: false

  field :inputs, 3,
    repeated: true,
    type: Google.Home.Graph.V1.QueryRequestInput,
    deprecated: false
end

defmodule Google.Home.Graph.V1.QueryRequestInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :payload, 1, type: Google.Home.Graph.V1.QueryRequestPayload
end

defmodule Google.Home.Graph.V1.QueryRequestPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :devices, 1, repeated: true, type: Google.Home.Graph.V1.AgentDeviceId
end

defmodule Google.Home.Graph.V1.AgentDeviceId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
end

defmodule Google.Home.Graph.V1.QueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :payload, 2, type: Google.Home.Graph.V1.QueryResponsePayload
end

defmodule Google.Home.Graph.V1.QueryResponsePayload.DevicesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Struct
end

defmodule Google.Home.Graph.V1.QueryResponsePayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :devices, 1,
    repeated: true,
    type: Google.Home.Graph.V1.QueryResponsePayload.DevicesEntry,
    map: true
end

defmodule Google.Home.Graph.V1.SyncRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :agent_user_id, 2, type: :string, json_name: "agentUserId", deprecated: false
end

defmodule Google.Home.Graph.V1.SyncResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
  field :payload, 2, type: Google.Home.Graph.V1.SyncResponsePayload
end

defmodule Google.Home.Graph.V1.SyncResponsePayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :agent_user_id, 1, type: :string, json_name: "agentUserId"
  field :devices, 2, repeated: true, type: Google.Home.Graph.V1.Device
end

defmodule Google.Home.Graph.V1.HomeGraphApiService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.home.graph.v1.HomeGraphApiService",
    protoc_gen_elixir_version: "0.13.0"

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