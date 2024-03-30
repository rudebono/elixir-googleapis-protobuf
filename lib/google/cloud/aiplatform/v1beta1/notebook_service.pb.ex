defmodule Google.Cloud.Aiplatform.V1beta1.CreateNotebookRuntimeTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :notebook_runtime_template, 2,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookRuntimeTemplate,
    json_name: "notebookRuntimeTemplate",
    deprecated: false

  field :notebook_runtime_template_id, 3,
    type: :string,
    json_name: "notebookRuntimeTemplateId",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateNotebookRuntimeTemplateOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetNotebookRuntimeTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListNotebookRuntimeTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListNotebookRuntimeTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :notebook_runtime_templates, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookRuntimeTemplate,
    json_name: "notebookRuntimeTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteNotebookRuntimeTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssignNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :notebook_runtime_template, 2,
    type: :string,
    json_name: "notebookRuntimeTemplate",
    deprecated: false

  field :notebook_runtime, 3,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookRuntime,
    json_name: "notebookRuntime",
    deprecated: false

  field :notebook_runtime_id, 4, type: :string, json_name: "notebookRuntimeId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AssignNotebookRuntimeOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListNotebookRuntimesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListNotebookRuntimesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :notebook_runtimes, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.NotebookRuntime,
    json_name: "notebookRuntimes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpgradeNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpgradeNotebookRuntimeOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpgradeNotebookRuntimeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.StartNotebookRuntimeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.StartNotebookRuntimeOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :progress_message, 2, type: :string, json_name: "progressMessage"
end

defmodule Google.Cloud.Aiplatform.V1beta1.StartNotebookRuntimeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.NotebookService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.NotebookService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateNotebookRuntimeTemplate,
      Google.Cloud.Aiplatform.V1beta1.CreateNotebookRuntimeTemplateRequest,
      Google.Longrunning.Operation

  rpc :GetNotebookRuntimeTemplate,
      Google.Cloud.Aiplatform.V1beta1.GetNotebookRuntimeTemplateRequest,
      Google.Cloud.Aiplatform.V1beta1.NotebookRuntimeTemplate

  rpc :ListNotebookRuntimeTemplates,
      Google.Cloud.Aiplatform.V1beta1.ListNotebookRuntimeTemplatesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListNotebookRuntimeTemplatesResponse

  rpc :DeleteNotebookRuntimeTemplate,
      Google.Cloud.Aiplatform.V1beta1.DeleteNotebookRuntimeTemplateRequest,
      Google.Longrunning.Operation

  rpc :AssignNotebookRuntime,
      Google.Cloud.Aiplatform.V1beta1.AssignNotebookRuntimeRequest,
      Google.Longrunning.Operation

  rpc :GetNotebookRuntime,
      Google.Cloud.Aiplatform.V1beta1.GetNotebookRuntimeRequest,
      Google.Cloud.Aiplatform.V1beta1.NotebookRuntime

  rpc :ListNotebookRuntimes,
      Google.Cloud.Aiplatform.V1beta1.ListNotebookRuntimesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListNotebookRuntimesResponse

  rpc :DeleteNotebookRuntime,
      Google.Cloud.Aiplatform.V1beta1.DeleteNotebookRuntimeRequest,
      Google.Longrunning.Operation

  rpc :UpgradeNotebookRuntime,
      Google.Cloud.Aiplatform.V1beta1.UpgradeNotebookRuntimeRequest,
      Google.Longrunning.Operation

  rpc :StartNotebookRuntime,
      Google.Cloud.Aiplatform.V1beta1.StartNotebookRuntimeRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.NotebookService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.NotebookService.Service
end