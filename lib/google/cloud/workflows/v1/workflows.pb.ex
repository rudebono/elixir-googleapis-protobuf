defmodule Google.Cloud.Workflows.V1.Workflow.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
end

defmodule Google.Cloud.Workflows.V1.Workflow.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.V1.Workflow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_code: {:source_contents, String.t()},
          name: String.t(),
          description: String.t(),
          state: Google.Cloud.Workflows.V1.Workflow.State.t(),
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
  field :state, 3, type: Google.Cloud.Workflows.V1.Workflow.State, enum: true
  field :revision_id, 4, type: :string, json_name: "revisionId"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :revision_create_time, 7, type: Google.Protobuf.Timestamp, json_name: "revisionCreateTime"

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Workflows.V1.Workflow.LabelsEntry,
    map: true

  field :service_account, 9, type: :string, json_name: "serviceAccount"
  field :source_contents, 10, type: :string, json_name: "sourceContents", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.V1.ListWorkflowsRequest do
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

defmodule Google.Cloud.Workflows.V1.ListWorkflowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workflows: [Google.Cloud.Workflows.V1.Workflow.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:workflows, :next_page_token, :unreachable]

  field :workflows, 1, repeated: true, type: Google.Cloud.Workflows.V1.Workflow
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.V1.GetWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.V1.CreateWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          workflow: Google.Cloud.Workflows.V1.Workflow.t() | nil,
          workflow_id: String.t()
        }

  defstruct [:parent, :workflow, :workflow_id]

  field :parent, 1, type: :string
  field :workflow, 2, type: Google.Cloud.Workflows.V1.Workflow
  field :workflow_id, 3, type: :string, json_name: "workflowId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.V1.DeleteWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.V1.UpdateWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workflow: Google.Cloud.Workflows.V1.Workflow.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:workflow, :update_mask]

  field :workflow, 1, type: Google.Cloud.Workflows.V1.Workflow
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.V1.OperationMetadata do
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

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :api_version, 5, type: :string, json_name: "apiVersion"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Workflows.V1.Workflows.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.workflows.v1.Workflows"

  rpc :ListWorkflows,
      Google.Cloud.Workflows.V1.ListWorkflowsRequest,
      Google.Cloud.Workflows.V1.ListWorkflowsResponse

  rpc :GetWorkflow,
      Google.Cloud.Workflows.V1.GetWorkflowRequest,
      Google.Cloud.Workflows.V1.Workflow

  rpc :CreateWorkflow,
      Google.Cloud.Workflows.V1.CreateWorkflowRequest,
      Google.Longrunning.Operation

  rpc :DeleteWorkflow,
      Google.Cloud.Workflows.V1.DeleteWorkflowRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkflow,
      Google.Cloud.Workflows.V1.UpdateWorkflowRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Workflows.V1.Workflows.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Workflows.V1.Workflows.Service
end
