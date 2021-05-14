defmodule Google.Area120.Tables.V1alpha1.View do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VIEW_UNSPECIFIED | :COLUMN_ID_VIEW

  field :VIEW_UNSPECIFIED, 0

  field :COLUMN_ID_VIEW, 1
end

defmodule Google.Area120.Tables.V1alpha1.GetTableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.ListTablesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 1, type: :int32
  field :page_token, 2, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.ListTablesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tables: [Google.Area120.Tables.V1alpha1.Table.t()],
          next_page_token: String.t()
        }

  defstruct [:tables, :next_page_token]

  field :tables, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Table
  field :next_page_token, 2, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.GetWorkspaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.ListWorkspacesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 1, type: :int32
  field :page_token, 2, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.ListWorkspacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workspaces: [Google.Area120.Tables.V1alpha1.Workspace.t()],
          next_page_token: String.t()
        }

  defstruct [:workspaces, :next_page_token]

  field :workspaces, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Workspace
  field :next_page_token, 2, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.GetRowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Area120.Tables.V1alpha1.View.t()
        }

  defstruct [:name, :view]

  field :name, 1, type: :string
  field :view, 2, type: Google.Area120.Tables.V1alpha1.View, enum: true
end

defmodule Google.Area120.Tables.V1alpha1.ListRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Area120.Tables.V1alpha1.View.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :view, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :view, 4, type: Google.Area120.Tables.V1alpha1.View, enum: true
  field :filter, 5, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.ListRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows: [Google.Area120.Tables.V1alpha1.Row.t()],
          next_page_token: String.t()
        }

  defstruct [:rows, :next_page_token]

  field :rows, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Row
  field :next_page_token, 2, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.CreateRowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          row: Google.Area120.Tables.V1alpha1.Row.t() | nil,
          view: Google.Area120.Tables.V1alpha1.View.t()
        }

  defstruct [:parent, :row, :view]

  field :parent, 1, type: :string
  field :row, 2, type: Google.Area120.Tables.V1alpha1.Row
  field :view, 3, type: Google.Area120.Tables.V1alpha1.View, enum: true
end

defmodule Google.Area120.Tables.V1alpha1.BatchCreateRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [Google.Area120.Tables.V1alpha1.CreateRowRequest.t()]
        }

  defstruct [:parent, :requests]

  field :parent, 1, type: :string
  field :requests, 2, repeated: true, type: Google.Area120.Tables.V1alpha1.CreateRowRequest
end

defmodule Google.Area120.Tables.V1alpha1.BatchCreateRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows: [Google.Area120.Tables.V1alpha1.Row.t()]
        }

  defstruct [:rows]

  field :rows, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Row
end

defmodule Google.Area120.Tables.V1alpha1.UpdateRowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row: Google.Area120.Tables.V1alpha1.Row.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          view: Google.Area120.Tables.V1alpha1.View.t()
        }

  defstruct [:row, :update_mask, :view]

  field :row, 1, type: Google.Area120.Tables.V1alpha1.Row
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :view, 3, type: Google.Area120.Tables.V1alpha1.View, enum: true
end

defmodule Google.Area120.Tables.V1alpha1.BatchUpdateRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          requests: [Google.Area120.Tables.V1alpha1.UpdateRowRequest.t()]
        }

  defstruct [:parent, :requests]

  field :parent, 1, type: :string
  field :requests, 2, repeated: true, type: Google.Area120.Tables.V1alpha1.UpdateRowRequest
end

defmodule Google.Area120.Tables.V1alpha1.BatchUpdateRowsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rows: [Google.Area120.Tables.V1alpha1.Row.t()]
        }

  defstruct [:rows]

  field :rows, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Row
end

defmodule Google.Area120.Tables.V1alpha1.DeleteRowRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.BatchDeleteRowsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          names: [String.t()]
        }

  defstruct [:parent, :names]

  field :parent, 1, type: :string
  field :names, 2, repeated: true, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.Table do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          columns: [Google.Area120.Tables.V1alpha1.ColumnDescription.t()]
        }

  defstruct [:name, :display_name, :columns]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :columns, 3, repeated: true, type: Google.Area120.Tables.V1alpha1.ColumnDescription
end

defmodule Google.Area120.Tables.V1alpha1.ColumnDescription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          data_type: String.t(),
          id: String.t(),
          labels: [Google.Area120.Tables.V1alpha1.LabeledItem.t()],
          relationship_details: Google.Area120.Tables.V1alpha1.RelationshipDetails.t() | nil,
          lookup_details: Google.Area120.Tables.V1alpha1.LookupDetails.t() | nil
        }

  defstruct [:name, :data_type, :id, :labels, :relationship_details, :lookup_details]

  field :name, 1, type: :string
  field :data_type, 2, type: :string
  field :id, 3, type: :string
  field :labels, 4, repeated: true, type: Google.Area120.Tables.V1alpha1.LabeledItem
  field :relationship_details, 5, type: Google.Area120.Tables.V1alpha1.RelationshipDetails
  field :lookup_details, 6, type: Google.Area120.Tables.V1alpha1.LookupDetails
end

defmodule Google.Area120.Tables.V1alpha1.LabeledItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t()
        }

  defstruct [:name, :id]

  field :name, 1, type: :string
  field :id, 2, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.RelationshipDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          linked_table: String.t()
        }

  defstruct [:linked_table]

  field :linked_table, 1, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.LookupDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          relationship_column: String.t(),
          relationship_column_id: String.t()
        }

  defstruct [:relationship_column, :relationship_column_id]

  field :relationship_column, 1, type: :string
  field :relationship_column_id, 2, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.Row.ValuesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Area120.Tables.V1alpha1.Row do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          values: %{String.t() => Google.Protobuf.Value.t() | nil}
        }

  defstruct [:name, :values]

  field :name, 1, type: :string

  field :values, 2,
    repeated: true,
    type: Google.Area120.Tables.V1alpha1.Row.ValuesEntry,
    map: true
end

defmodule Google.Area120.Tables.V1alpha1.Workspace do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          tables: [Google.Area120.Tables.V1alpha1.Table.t()]
        }

  defstruct [:name, :display_name, :tables]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :tables, 3, repeated: true, type: Google.Area120.Tables.V1alpha1.Table
end

defmodule Google.Area120.Tables.V1alpha1.TablesService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.area120.tables.v1alpha1.TablesService"

  rpc :GetTable,
      Google.Area120.Tables.V1alpha1.GetTableRequest,
      Google.Area120.Tables.V1alpha1.Table

  rpc :ListTables,
      Google.Area120.Tables.V1alpha1.ListTablesRequest,
      Google.Area120.Tables.V1alpha1.ListTablesResponse

  rpc :GetWorkspace,
      Google.Area120.Tables.V1alpha1.GetWorkspaceRequest,
      Google.Area120.Tables.V1alpha1.Workspace

  rpc :ListWorkspaces,
      Google.Area120.Tables.V1alpha1.ListWorkspacesRequest,
      Google.Area120.Tables.V1alpha1.ListWorkspacesResponse

  rpc :GetRow, Google.Area120.Tables.V1alpha1.GetRowRequest, Google.Area120.Tables.V1alpha1.Row

  rpc :ListRows,
      Google.Area120.Tables.V1alpha1.ListRowsRequest,
      Google.Area120.Tables.V1alpha1.ListRowsResponse

  rpc :CreateRow,
      Google.Area120.Tables.V1alpha1.CreateRowRequest,
      Google.Area120.Tables.V1alpha1.Row

  rpc :BatchCreateRows,
      Google.Area120.Tables.V1alpha1.BatchCreateRowsRequest,
      Google.Area120.Tables.V1alpha1.BatchCreateRowsResponse

  rpc :UpdateRow,
      Google.Area120.Tables.V1alpha1.UpdateRowRequest,
      Google.Area120.Tables.V1alpha1.Row

  rpc :BatchUpdateRows,
      Google.Area120.Tables.V1alpha1.BatchUpdateRowsRequest,
      Google.Area120.Tables.V1alpha1.BatchUpdateRowsResponse

  rpc :DeleteRow, Google.Area120.Tables.V1alpha1.DeleteRowRequest, Google.Protobuf.Empty

  rpc :BatchDeleteRows,
      Google.Area120.Tables.V1alpha1.BatchDeleteRowsRequest,
      Google.Protobuf.Empty
end

defmodule Google.Area120.Tables.V1alpha1.TablesService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Area120.Tables.V1alpha1.TablesService.Service
end
