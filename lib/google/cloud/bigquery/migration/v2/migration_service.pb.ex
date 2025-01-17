defmodule Google.Cloud.Bigquery.Migration.V2.CreateMigrationWorkflowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :migration_workflow, 2,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow,
    json_name: "migrationWorkflow",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.GetMigrationWorkflowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Bigquery.Migration.V2.ListMigrationWorkflowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Bigquery.Migration.V2.ListMigrationWorkflowsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :migration_workflows, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow,
    json_name: "migrationWorkflows"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Migration.V2.DeleteMigrationWorkflowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.StartMigrationWorkflowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.GetMigrationSubtaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.ListMigrationSubtasksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.ListMigrationSubtasksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :migration_subtasks, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationSubtask,
    json_name: "migrationSubtasks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Migration.V2.MigrationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.bigquery.migration.v2.MigrationService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateMigrationWorkflow,
      Google.Cloud.Bigquery.Migration.V2.CreateMigrationWorkflowRequest,
      Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow

  rpc :GetMigrationWorkflow,
      Google.Cloud.Bigquery.Migration.V2.GetMigrationWorkflowRequest,
      Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow

  rpc :ListMigrationWorkflows,
      Google.Cloud.Bigquery.Migration.V2.ListMigrationWorkflowsRequest,
      Google.Cloud.Bigquery.Migration.V2.ListMigrationWorkflowsResponse

  rpc :DeleteMigrationWorkflow,
      Google.Cloud.Bigquery.Migration.V2.DeleteMigrationWorkflowRequest,
      Google.Protobuf.Empty

  rpc :StartMigrationWorkflow,
      Google.Cloud.Bigquery.Migration.V2.StartMigrationWorkflowRequest,
      Google.Protobuf.Empty

  rpc :GetMigrationSubtask,
      Google.Cloud.Bigquery.Migration.V2.GetMigrationSubtaskRequest,
      Google.Cloud.Bigquery.Migration.V2.MigrationSubtask

  rpc :ListMigrationSubtasks,
      Google.Cloud.Bigquery.Migration.V2.ListMigrationSubtasksRequest,
      Google.Cloud.Bigquery.Migration.V2.ListMigrationSubtasksResponse
end

defmodule Google.Cloud.Bigquery.Migration.V2.MigrationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Bigquery.Migration.V2.MigrationService.Service
end
