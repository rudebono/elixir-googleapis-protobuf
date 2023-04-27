defmodule Google.Cloud.Workflows.V1.Workflow.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
end

defmodule Google.Cloud.Workflows.V1.Workflow.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workflows.V1.Workflow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source_code, 0

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :state, 3, type: Google.Cloud.Workflows.V1.Workflow.State, enum: true, deprecated: false
  field :revision_id, 4, type: :string, json_name: "revisionId", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :revision_create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Workflows.V1.Workflow.LabelsEntry,
    map: true

  field :service_account, 9, type: :string, json_name: "serviceAccount"
  field :source_contents, 10, type: :string, json_name: "sourceContents", oneof: 0
end

defmodule Google.Cloud.Workflows.V1.ListWorkflowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Workflows.V1.ListWorkflowsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :workflows, 1, repeated: true, type: Google.Cloud.Workflows.V1.Workflow
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Workflows.V1.GetWorkflowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Workflows.V1.CreateWorkflowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :workflow, 2, type: Google.Cloud.Workflows.V1.Workflow, deprecated: false
  field :workflow_id, 3, type: :string, json_name: "workflowId", deprecated: false
end

defmodule Google.Cloud.Workflows.V1.DeleteWorkflowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Workflows.V1.UpdateWorkflowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :workflow, 1, type: Google.Cloud.Workflows.V1.Workflow, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Workflows.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :api_version, 5, type: :string, json_name: "apiVersion"
end

defmodule Google.Cloud.Workflows.V1.Workflows.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.workflows.v1.Workflows",
    protoc_gen_elixir_version: "0.12.0"

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