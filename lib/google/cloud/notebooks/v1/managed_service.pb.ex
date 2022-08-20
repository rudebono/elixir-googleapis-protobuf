defmodule Google.Cloud.Notebooks.V1.ListRuntimesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Notebooks.V1.ListRuntimesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :runtimes, 1, repeated: true, type: Google.Cloud.Notebooks.V1.Runtime
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Notebooks.V1.GetRuntimeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.CreateRuntimeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :runtime_id, 2, type: :string, json_name: "runtimeId", deprecated: false
  field :runtime, 3, type: Google.Cloud.Notebooks.V1.Runtime, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Notebooks.V1.DeleteRuntimeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Notebooks.V1.StartRuntimeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Notebooks.V1.StopRuntimeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Notebooks.V1.SwitchRuntimeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType"

  field :accelerator_config, 3,
    type: Google.Cloud.Notebooks.V1.RuntimeAcceleratorConfig,
    json_name: "acceleratorConfig"

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Notebooks.V1.ResetRuntimeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Notebooks.V1.ReportRuntimeEventRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :vm_id, 2, type: :string, json_name: "vmId", deprecated: false
  field :event, 3, type: Google.Cloud.Notebooks.V1.Event, deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.RefreshRuntimeTokenInternalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :vm_id, 2, type: :string, json_name: "vmId", deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.RefreshRuntimeTokenInternalResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_token, 1, type: :string, json_name: "accessToken"

  field :expire_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end

defmodule Google.Cloud.Notebooks.V1.ManagedNotebookService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.notebooks.v1.ManagedNotebookService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListRuntimes,
      Google.Cloud.Notebooks.V1.ListRuntimesRequest,
      Google.Cloud.Notebooks.V1.ListRuntimesResponse

  rpc :GetRuntime, Google.Cloud.Notebooks.V1.GetRuntimeRequest, Google.Cloud.Notebooks.V1.Runtime

  rpc :CreateRuntime, Google.Cloud.Notebooks.V1.CreateRuntimeRequest, Google.Longrunning.Operation

  rpc :DeleteRuntime, Google.Cloud.Notebooks.V1.DeleteRuntimeRequest, Google.Longrunning.Operation

  rpc :StartRuntime, Google.Cloud.Notebooks.V1.StartRuntimeRequest, Google.Longrunning.Operation

  rpc :StopRuntime, Google.Cloud.Notebooks.V1.StopRuntimeRequest, Google.Longrunning.Operation

  rpc :SwitchRuntime, Google.Cloud.Notebooks.V1.SwitchRuntimeRequest, Google.Longrunning.Operation

  rpc :ResetRuntime, Google.Cloud.Notebooks.V1.ResetRuntimeRequest, Google.Longrunning.Operation

  rpc :ReportRuntimeEvent,
      Google.Cloud.Notebooks.V1.ReportRuntimeEventRequest,
      Google.Longrunning.Operation

  rpc :RefreshRuntimeTokenInternal,
      Google.Cloud.Notebooks.V1.RefreshRuntimeTokenInternalRequest,
      Google.Cloud.Notebooks.V1.RefreshRuntimeTokenInternalResponse
end

defmodule Google.Cloud.Notebooks.V1.ManagedNotebookService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Notebooks.V1.ManagedNotebookService.Service
end