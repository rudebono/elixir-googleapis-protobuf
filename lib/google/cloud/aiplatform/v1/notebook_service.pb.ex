defmodule Google.Cloud.Aiplatform.V1.NotebookExecutionJobView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :NOTEBOOK_EXECUTION_JOB_VIEW_UNSPECIFIED, 0
  field :NOTEBOOK_EXECUTION_JOB_VIEW_BASIC, 1
  field :NOTEBOOK_EXECUTION_JOB_VIEW_FULL, 2
end

defmodule Google.Cloud.Aiplatform.V1.CreateNotebookRuntimeTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :notebook_runtime_template, 2,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntimeTemplate,
    json_name: "notebookRuntimeTemplate",
    deprecated: false

  field :notebook_runtime_template_id, 3,
    type: :string,
    json_name: "notebookRuntimeTemplateId",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateNotebookRuntimeTemplateOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.GetNotebookRuntimeTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListNotebookRuntimeTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListNotebookRuntimeTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notebook_runtime_templates, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntimeTemplate,
    json_name: "notebookRuntimeTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteNotebookRuntimeTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.UpdateNotebookRuntimeTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notebook_runtime_template, 1,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntimeTemplate,
    json_name: "notebookRuntimeTemplate",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.AssignNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :notebook_runtime_template, 2,
    type: :string,
    json_name: "notebookRuntimeTemplate",
    deprecated: false

  field :notebook_runtime, 3,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntime,
    json_name: "notebookRuntime",
    deprecated: false

  field :notebook_runtime_id, 4, type: :string, json_name: "notebookRuntimeId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.AssignNotebookRuntimeOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1.GetNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListNotebookRuntimesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListNotebookRuntimesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notebook_runtimes, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NotebookRuntime,
    json_name: "notebookRuntimes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.UpgradeNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.UpgradeNotebookRuntimeOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1.UpgradeNotebookRuntimeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.StartNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StartNotebookRuntimeOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1.StartNotebookRuntimeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.StopNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StopNotebookRuntimeOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.StopNotebookRuntimeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.CreateNotebookExecutionJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :notebook_execution_job, 2,
    type: Google.Cloud.Aiplatform.V1.NotebookExecutionJob,
    json_name: "notebookExecutionJob",
    deprecated: false

  field :notebook_execution_job_id, 3,
    type: :string,
    json_name: "notebookExecutionJobId",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateNotebookExecutionJobOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1.GetNotebookExecutionJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 6,
    type: Google.Cloud.Aiplatform.V1.NotebookExecutionJobView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListNotebookExecutionJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false

  field :view, 6,
    type: Google.Cloud.Aiplatform.V1.NotebookExecutionJobView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListNotebookExecutionJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notebook_execution_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NotebookExecutionJob,
    json_name: "notebookExecutionJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteNotebookExecutionJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NotebookService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.NotebookService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateNotebookRuntimeTemplate,
      Google.Cloud.Aiplatform.V1.CreateNotebookRuntimeTemplateRequest,
      Google.Longrunning.Operation

  rpc :GetNotebookRuntimeTemplate,
      Google.Cloud.Aiplatform.V1.GetNotebookRuntimeTemplateRequest,
      Google.Cloud.Aiplatform.V1.NotebookRuntimeTemplate

  rpc :ListNotebookRuntimeTemplates,
      Google.Cloud.Aiplatform.V1.ListNotebookRuntimeTemplatesRequest,
      Google.Cloud.Aiplatform.V1.ListNotebookRuntimeTemplatesResponse

  rpc :DeleteNotebookRuntimeTemplate,
      Google.Cloud.Aiplatform.V1.DeleteNotebookRuntimeTemplateRequest,
      Google.Longrunning.Operation

  rpc :UpdateNotebookRuntimeTemplate,
      Google.Cloud.Aiplatform.V1.UpdateNotebookRuntimeTemplateRequest,
      Google.Cloud.Aiplatform.V1.NotebookRuntimeTemplate

  rpc :AssignNotebookRuntime,
      Google.Cloud.Aiplatform.V1.AssignNotebookRuntimeRequest,
      Google.Longrunning.Operation

  rpc :GetNotebookRuntime,
      Google.Cloud.Aiplatform.V1.GetNotebookRuntimeRequest,
      Google.Cloud.Aiplatform.V1.NotebookRuntime

  rpc :ListNotebookRuntimes,
      Google.Cloud.Aiplatform.V1.ListNotebookRuntimesRequest,
      Google.Cloud.Aiplatform.V1.ListNotebookRuntimesResponse

  rpc :DeleteNotebookRuntime,
      Google.Cloud.Aiplatform.V1.DeleteNotebookRuntimeRequest,
      Google.Longrunning.Operation

  rpc :UpgradeNotebookRuntime,
      Google.Cloud.Aiplatform.V1.UpgradeNotebookRuntimeRequest,
      Google.Longrunning.Operation

  rpc :StartNotebookRuntime,
      Google.Cloud.Aiplatform.V1.StartNotebookRuntimeRequest,
      Google.Longrunning.Operation

  rpc :StopNotebookRuntime,
      Google.Cloud.Aiplatform.V1.StopNotebookRuntimeRequest,
      Google.Longrunning.Operation

  rpc :CreateNotebookExecutionJob,
      Google.Cloud.Aiplatform.V1.CreateNotebookExecutionJobRequest,
      Google.Longrunning.Operation

  rpc :GetNotebookExecutionJob,
      Google.Cloud.Aiplatform.V1.GetNotebookExecutionJobRequest,
      Google.Cloud.Aiplatform.V1.NotebookExecutionJob

  rpc :ListNotebookExecutionJobs,
      Google.Cloud.Aiplatform.V1.ListNotebookExecutionJobsRequest,
      Google.Cloud.Aiplatform.V1.ListNotebookExecutionJobsResponse

  rpc :DeleteNotebookExecutionJob,
      Google.Cloud.Aiplatform.V1.DeleteNotebookExecutionJobRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1.NotebookService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.NotebookService.Service
end