defmodule Google.Area120.Tables.V1alpha1.View do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VIEW_UNSPECIFIED, 0
  field :COLUMN_ID_VIEW, 1
end

defmodule Google.Area120.Tables.V1alpha1.GetTableRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.ListTablesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Area120.Tables.V1alpha1.ListTablesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tables, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Table
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Area120.Tables.V1alpha1.GetWorkspaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.ListWorkspacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Area120.Tables.V1alpha1.ListWorkspacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspaces, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Workspace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Area120.Tables.V1alpha1.GetRowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Area120.Tables.V1alpha1.View, enum: true, deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.ListRowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Area120.Tables.V1alpha1.View, enum: true, deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.ListRowsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rows, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Row
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Area120.Tables.V1alpha1.CreateRowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :row, 2, type: Google.Area120.Tables.V1alpha1.Row, deprecated: false
  field :view, 3, type: Google.Area120.Tables.V1alpha1.View, enum: true, deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.BatchCreateRowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Area120.Tables.V1alpha1.CreateRowRequest,
    deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.BatchCreateRowsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rows, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Row
end

defmodule Google.Area120.Tables.V1alpha1.UpdateRowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :row, 1, type: Google.Area120.Tables.V1alpha1.Row, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :view, 3, type: Google.Area120.Tables.V1alpha1.View, enum: true, deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.BatchUpdateRowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Area120.Tables.V1alpha1.UpdateRowRequest,
    deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.BatchUpdateRowsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rows, 1, repeated: true, type: Google.Area120.Tables.V1alpha1.Row
end

defmodule Google.Area120.Tables.V1alpha1.DeleteRowRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.BatchDeleteRowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.Table do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :columns, 3, repeated: true, type: Google.Area120.Tables.V1alpha1.ColumnDescription
end

defmodule Google.Area120.Tables.V1alpha1.ColumnDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :data_type, 2, type: :string, json_name: "dataType"
  field :id, 3, type: :string

  field :labels, 4,
    repeated: true,
    type: Google.Area120.Tables.V1alpha1.LabeledItem,
    deprecated: false

  field :relationship_details, 5,
    type: Google.Area120.Tables.V1alpha1.RelationshipDetails,
    json_name: "relationshipDetails",
    deprecated: false

  field :lookup_details, 6,
    type: Google.Area120.Tables.V1alpha1.LookupDetails,
    json_name: "lookupDetails",
    deprecated: false
end

defmodule Google.Area120.Tables.V1alpha1.LabeledItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
end

defmodule Google.Area120.Tables.V1alpha1.RelationshipDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :linked_table, 1, type: :string, json_name: "linkedTable"
end

defmodule Google.Area120.Tables.V1alpha1.LookupDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :relationship_column, 1, type: :string, json_name: "relationshipColumn"
  field :relationship_column_id, 2, type: :string, json_name: "relationshipColumnId"
end

defmodule Google.Area120.Tables.V1alpha1.Row.ValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Area120.Tables.V1alpha1.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :values, 2,
    repeated: true,
    type: Google.Area120.Tables.V1alpha1.Row.ValuesEntry,
    map: true
end

defmodule Google.Area120.Tables.V1alpha1.Workspace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :tables, 3, repeated: true, type: Google.Area120.Tables.V1alpha1.Table
end

defmodule Google.Area120.Tables.V1alpha1.TablesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.area120.tables.v1alpha1.TablesService",
    protoc_gen_elixir_version: "0.15.0"

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
