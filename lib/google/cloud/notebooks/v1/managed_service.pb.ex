defmodule Google.Cloud.Notebooks.V1.ListRuntimesRequest do
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
defmodule Google.Cloud.Notebooks.V1.ListRuntimesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          runtimes: [Google.Cloud.Notebooks.V1.Runtime.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct runtimes: [],
            next_page_token: "",
            unreachable: []

  field :runtimes, 1, repeated: true, type: Google.Cloud.Notebooks.V1.Runtime
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Notebooks.V1.GetRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.CreateRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          runtime_id: String.t(),
          runtime: Google.Cloud.Notebooks.V1.Runtime.t() | nil,
          request_id: String.t()
        }

  defstruct parent: "",
            runtime_id: "",
            runtime: nil,
            request_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :runtime_id, 2, type: :string, json_name: "runtimeId", deprecated: false
  field :runtime, 3, type: Google.Cloud.Notebooks.V1.Runtime, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Notebooks.V1.DeleteRuntimeRequest do
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
defmodule Google.Cloud.Notebooks.V1.StartRuntimeRequest do
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
defmodule Google.Cloud.Notebooks.V1.StopRuntimeRequest do
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
defmodule Google.Cloud.Notebooks.V1.SwitchRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          machine_type: String.t(),
          accelerator_config: Google.Cloud.Notebooks.V1.RuntimeAcceleratorConfig.t() | nil,
          request_id: String.t()
        }

  defstruct name: "",
            machine_type: "",
            accelerator_config: nil,
            request_id: ""

  field :name, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType"

  field :accelerator_config, 3,
    type: Google.Cloud.Notebooks.V1.RuntimeAcceleratorConfig,
    json_name: "acceleratorConfig"

  field :request_id, 4, type: :string, json_name: "requestId"
end
defmodule Google.Cloud.Notebooks.V1.ResetRuntimeRequest do
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
defmodule Google.Cloud.Notebooks.V1.ReportRuntimeEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          vm_id: String.t(),
          event: Google.Cloud.Notebooks.V1.Event.t() | nil
        }

  defstruct name: "",
            vm_id: "",
            event: nil

  field :name, 1, type: :string, deprecated: false
  field :vm_id, 2, type: :string, json_name: "vmId", deprecated: false
  field :event, 3, type: Google.Cloud.Notebooks.V1.Event, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.RefreshRuntimeTokenInternalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          vm_id: String.t()
        }

  defstruct name: "",
            vm_id: ""

  field :name, 1, type: :string, deprecated: false
  field :vm_id, 2, type: :string, json_name: "vmId", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.RefreshRuntimeTokenInternalResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_token: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct access_token: "",
            expire_time: nil

  field :access_token, 1, type: :string, json_name: "accessToken"

  field :expire_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end
defmodule Google.Cloud.Notebooks.V1.ManagedNotebookService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.notebooks.v1.ManagedNotebookService"

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
