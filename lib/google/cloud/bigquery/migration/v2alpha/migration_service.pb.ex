defmodule Google.Cloud.Bigquery.Migration.V2alpha.CreateMigrationWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          migration_workflow: Google.Cloud.Bigquery.Migration.V2alpha.MigrationWorkflow.t() | nil
        }

  defstruct [:parent, :migration_workflow]

  field :parent, 1, type: :string
  field :migration_workflow, 2, type: Google.Cloud.Bigquery.Migration.V2alpha.MigrationWorkflow
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.GetMigrationWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :read_mask]

  field :name, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.ListMigrationWorkflowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :read_mask, :page_size, :page_token]

  field :parent, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.ListMigrationWorkflowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migration_workflows: [Google.Cloud.Bigquery.Migration.V2alpha.MigrationWorkflow.t()],
          next_page_token: String.t()
        }

  defstruct [:migration_workflows, :next_page_token]

  field :migration_workflows, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2alpha.MigrationWorkflow

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.DeleteMigrationWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.StartMigrationWorkflowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.GetMigrationSubtaskRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :read_mask]

  field :name, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.ListMigrationSubtasksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :read_mask, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :read_mask, 2, type: Google.Protobuf.FieldMask
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :filter, 5, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.ListMigrationSubtasksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          migration_subtasks: [Google.Cloud.Bigquery.Migration.V2alpha.MigrationSubtask.t()],
          next_page_token: String.t()
        }

  defstruct [:migration_subtasks, :next_page_token]

  field :migration_subtasks, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2alpha.MigrationSubtask

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.MigrationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.migration.v2alpha.MigrationService"

  rpc :CreateMigrationWorkflow,
      Google.Cloud.Bigquery.Migration.V2alpha.CreateMigrationWorkflowRequest,
      Google.Cloud.Bigquery.Migration.V2alpha.MigrationWorkflow

  rpc :GetMigrationWorkflow,
      Google.Cloud.Bigquery.Migration.V2alpha.GetMigrationWorkflowRequest,
      Google.Cloud.Bigquery.Migration.V2alpha.MigrationWorkflow

  rpc :ListMigrationWorkflows,
      Google.Cloud.Bigquery.Migration.V2alpha.ListMigrationWorkflowsRequest,
      Google.Cloud.Bigquery.Migration.V2alpha.ListMigrationWorkflowsResponse

  rpc :DeleteMigrationWorkflow,
      Google.Cloud.Bigquery.Migration.V2alpha.DeleteMigrationWorkflowRequest,
      Google.Protobuf.Empty

  rpc :StartMigrationWorkflow,
      Google.Cloud.Bigquery.Migration.V2alpha.StartMigrationWorkflowRequest,
      Google.Protobuf.Empty

  rpc :GetMigrationSubtask,
      Google.Cloud.Bigquery.Migration.V2alpha.GetMigrationSubtaskRequest,
      Google.Cloud.Bigquery.Migration.V2alpha.MigrationSubtask

  rpc :ListMigrationSubtasks,
      Google.Cloud.Bigquery.Migration.V2alpha.ListMigrationSubtasksRequest,
      Google.Cloud.Bigquery.Migration.V2alpha.ListMigrationSubtasksResponse
end

defmodule Google.Cloud.Bigquery.Migration.V2alpha.MigrationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Migration.V2alpha.MigrationService.Service
end
