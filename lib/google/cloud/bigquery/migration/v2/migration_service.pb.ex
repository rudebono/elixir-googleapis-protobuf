defmodule Google.Cloud.Bigquery.Migration.V2.CreateMigrationWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          migration_workflow: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.t() | nil
        }

  defstruct parent: "",
            migration_workflow: nil

  field :parent, 1, type: :string, deprecated: false

  field :migration_workflow, 2,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow,
    json_name: "migrationWorkflow",
    deprecated: false
end
defmodule Google.Cloud.Bigquery.Migration.V2.GetMigrationWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            read_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Bigquery.Migration.V2.ListMigrationWorkflowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            read_mask: nil,
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Bigquery.Migration.V2.ListMigrationWorkflowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migration_workflows: [Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.t()],
          next_page_token: String.t()
        }

  defstruct migration_workflows: [],
            next_page_token: ""

  field :migration_workflows, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow,
    json_name: "migrationWorkflows"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Bigquery.Migration.V2.DeleteMigrationWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Migration.V2.StartMigrationWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Migration.V2.GetMigrationSubtaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            read_mask: nil

  field :name, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
end
defmodule Google.Cloud.Bigquery.Migration.V2.ListMigrationSubtasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            read_mask: nil,
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :read_mask, 2, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end
defmodule Google.Cloud.Bigquery.Migration.V2.ListMigrationSubtasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migration_subtasks: [Google.Cloud.Bigquery.Migration.V2.MigrationSubtask.t()],
          next_page_token: String.t()
        }

  defstruct migration_subtasks: [],
            next_page_token: ""

  field :migration_subtasks, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationSubtask,
    json_name: "migrationSubtasks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Bigquery.Migration.V2.MigrationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.migration.v2.MigrationService"

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
