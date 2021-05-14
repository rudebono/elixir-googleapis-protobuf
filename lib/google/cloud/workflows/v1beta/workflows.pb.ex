defmodule Google.Cloud.Workflows.V1beta.Workflow.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE

  field :STATE_UNSPECIFIED, 0

  field :ACTIVE, 1
end

defmodule Google.Cloud.Workflows.V1beta.Workflow.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workflows.V1beta.Workflow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_code: {atom, any},
          name: String.t(),
          description: String.t(),
          state: Google.Cloud.Workflows.V1beta.Workflow.State.t(),
          revision_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          revision_create_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          service_account: String.t()
        }

  defstruct [
    :source_code,
    :name,
    :description,
    :state,
    :revision_id,
    :create_time,
    :update_time,
    :revision_create_time,
    :labels,
    :service_account
  ]

  oneof :source_code, 0
  field :name, 1, type: :string
  field :description, 2, type: :string
  field :state, 3, type: Google.Cloud.Workflows.V1beta.Workflow.State, enum: true
  field :revision_id, 4, type: :string
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp
  field :revision_create_time, 7, type: Google.Protobuf.Timestamp

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Workflows.V1beta.Workflow.LabelsEntry,
    map: true

  field :service_account, 9, type: :string
  field :source_contents, 10, type: :string, oneof: 0
end

defmodule Google.Cloud.Workflows.V1beta.ListWorkflowsRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Workflows.V1beta.ListWorkflowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workflows: [Google.Cloud.Workflows.V1beta.Workflow.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:workflows, :next_page_token, :unreachable]

  field :workflows, 1, repeated: true, type: Google.Cloud.Workflows.V1beta.Workflow
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Workflows.V1beta.GetWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Workflows.V1beta.CreateWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          workflow: Google.Cloud.Workflows.V1beta.Workflow.t() | nil,
          workflow_id: String.t()
        }

  defstruct [:parent, :workflow, :workflow_id]

  field :parent, 1, type: :string
  field :workflow, 2, type: Google.Cloud.Workflows.V1beta.Workflow
  field :workflow_id, 3, type: :string
end

defmodule Google.Cloud.Workflows.V1beta.DeleteWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Workflows.V1beta.UpdateWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workflow: Google.Cloud.Workflows.V1beta.Workflow.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:workflow, :update_mask]

  field :workflow, 1, type: Google.Cloud.Workflows.V1beta.Workflow
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Workflows.V1beta.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          api_version: String.t()
        }

  defstruct [:create_time, :end_time, :target, :verb, :api_version]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :api_version, 5, type: :string
end

defmodule Google.Cloud.Workflows.V1beta.Workflows.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.workflows.v1beta.Workflows"

  rpc :ListWorkflows,
      Google.Cloud.Workflows.V1beta.ListWorkflowsRequest,
      Google.Cloud.Workflows.V1beta.ListWorkflowsResponse

  rpc :GetWorkflow,
      Google.Cloud.Workflows.V1beta.GetWorkflowRequest,
      Google.Cloud.Workflows.V1beta.Workflow

  rpc :CreateWorkflow,
      Google.Cloud.Workflows.V1beta.CreateWorkflowRequest,
      Google.Longrunning.Operation

  rpc :DeleteWorkflow,
      Google.Cloud.Workflows.V1beta.DeleteWorkflowRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkflow,
      Google.Cloud.Workflows.V1beta.UpdateWorkflowRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Workflows.V1beta.Workflows.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Workflows.V1beta.Workflows.Service
end
