defmodule Google.Cloud.Dataproc.V1.Session.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :TERMINATING, 3
  field :TERMINATED, 4
  field :FAILED, 5
end

defmodule Google.Cloud.Dataproc.V1.JupyterConfig.Kernel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :KERNEL_UNSPECIFIED, 0
  field :PYTHON, 1
  field :SCALA, 2
end

defmodule Google.Cloud.Dataproc.V1.CreateSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :session, 2, type: Google.Cloud.Dataproc.V1.Session, deprecated: false
  field :session_id, 3, type: :string, json_name: "sessionId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.GetSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ListSessionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ListSessionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sessions, 1, repeated: true, type: Google.Cloud.Dataproc.V1.Session, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataproc.V1.TerminateSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.DeleteSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.Session.SessionStateHistory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Dataproc.V1.Session.State, enum: true, deprecated: false
  field :state_message, 2, type: :string, json_name: "stateMessage", deprecated: false

  field :state_start_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "stateStartTime",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.Session.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.Session do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :session_config, 0

  field :name, 1, type: :string, deprecated: false
  field :uuid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :jupyter_session, 4,
    type: Google.Cloud.Dataproc.V1.JupyterConfig,
    json_name: "jupyterSession",
    oneof: 0,
    deprecated: false

  field :spark_connect_session, 17,
    type: Google.Cloud.Dataproc.V1.SparkConnectConfig,
    json_name: "sparkConnectSession",
    oneof: 0,
    deprecated: false

  field :runtime_info, 6,
    type: Google.Cloud.Dataproc.V1.RuntimeInfo,
    json_name: "runtimeInfo",
    deprecated: false

  field :state, 7, type: Google.Cloud.Dataproc.V1.Session.State, enum: true, deprecated: false
  field :state_message, 8, type: :string, json_name: "stateMessage", deprecated: false
  field :state_time, 9, type: Google.Protobuf.Timestamp, json_name: "stateTime", deprecated: false
  field :creator, 10, type: :string, deprecated: false

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.Session.LabelsEntry,
    map: true,
    deprecated: false

  field :runtime_config, 12,
    type: Google.Cloud.Dataproc.V1.RuntimeConfig,
    json_name: "runtimeConfig",
    deprecated: false

  field :environment_config, 13,
    type: Google.Cloud.Dataproc.V1.EnvironmentConfig,
    json_name: "environmentConfig",
    deprecated: false

  field :user, 14, type: :string, deprecated: false

  field :state_history, 15,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.Session.SessionStateHistory,
    json_name: "stateHistory",
    deprecated: false

  field :session_template, 16, type: :string, json_name: "sessionTemplate", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.JupyterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :kernel, 1,
    type: Google.Cloud.Dataproc.V1.JupyterConfig.Kernel,
    enum: true,
    deprecated: false

  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.SparkConnectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Dataproc.V1.SessionController.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataproc.v1.SessionController",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateSession, Google.Cloud.Dataproc.V1.CreateSessionRequest, Google.Longrunning.Operation

  rpc :GetSession, Google.Cloud.Dataproc.V1.GetSessionRequest, Google.Cloud.Dataproc.V1.Session

  rpc :ListSessions,
      Google.Cloud.Dataproc.V1.ListSessionsRequest,
      Google.Cloud.Dataproc.V1.ListSessionsResponse

  rpc :TerminateSession,
      Google.Cloud.Dataproc.V1.TerminateSessionRequest,
      Google.Longrunning.Operation

  rpc :DeleteSession, Google.Cloud.Dataproc.V1.DeleteSessionRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Dataproc.V1.SessionController.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataproc.V1.SessionController.Service
end
