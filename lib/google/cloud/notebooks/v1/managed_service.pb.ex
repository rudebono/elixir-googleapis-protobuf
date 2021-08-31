defmodule Google.Cloud.Notebooks.V1.ListRuntimesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Notebooks.V1.ListRuntimesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          runtimes: [Google.Cloud.Notebooks.V1.Runtime.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:runtimes, :next_page_token, :unreachable]

  field :runtimes, 1, repeated: true, type: Google.Cloud.Notebooks.V1.Runtime
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Notebooks.V1.GetRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Notebooks.V1.CreateRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          runtime_id: String.t(),
          runtime: Google.Cloud.Notebooks.V1.Runtime.t() | nil
        }

  defstruct [:parent, :runtime_id, :runtime]

  field :parent, 1, type: :string
  field :runtime_id, 2, type: :string
  field :runtime, 3, type: Google.Cloud.Notebooks.V1.Runtime
end

defmodule Google.Cloud.Notebooks.V1.DeleteRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Notebooks.V1.StartRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Notebooks.V1.StopRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Notebooks.V1.SwitchRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          machine_type: String.t(),
          accelerator_config: Google.Cloud.Notebooks.V1.RuntimeAcceleratorConfig.t() | nil
        }

  defstruct [:name, :machine_type, :accelerator_config]

  field :name, 1, type: :string
  field :machine_type, 2, type: :string
  field :accelerator_config, 3, type: Google.Cloud.Notebooks.V1.RuntimeAcceleratorConfig
end

defmodule Google.Cloud.Notebooks.V1.ResetRuntimeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Notebooks.V1.ReportRuntimeEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          vm_id: String.t(),
          event: Google.Cloud.Notebooks.V1.Event.t() | nil
        }

  defstruct [:name, :vm_id, :event]

  field :name, 1, type: :string
  field :vm_id, 2, type: :string
  field :event, 3, type: Google.Cloud.Notebooks.V1.Event
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
end

defmodule Google.Cloud.Notebooks.V1.ManagedNotebookService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Notebooks.V1.ManagedNotebookService.Service
end
