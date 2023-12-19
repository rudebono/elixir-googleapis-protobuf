defmodule Google.Firestore.Admin.V1.ListDatabasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Firestore.Admin.V1.CreateDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :database, 2, type: Google.Firestore.Admin.V1.Database, deprecated: false
  field :database_id, 3, type: :string, json_name: "databaseId", deprecated: false
end

defmodule Google.Firestore.Admin.V1.CreateDatabaseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Firestore.Admin.V1.ListDatabasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :databases, 1, repeated: true, type: Google.Firestore.Admin.V1.Database
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Firestore.Admin.V1.GetDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Firestore.Admin.V1.UpdateDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :database, 1, type: Google.Firestore.Admin.V1.Database, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Firestore.Admin.V1.UpdateDatabaseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Firestore.Admin.V1.DeleteDatabaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 3, type: :string
end

defmodule Google.Firestore.Admin.V1.DeleteDatabaseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Firestore.Admin.V1.CreateIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :index, 2, type: Google.Firestore.Admin.V1.Index, deprecated: false
end

defmodule Google.Firestore.Admin.V1.ListIndexesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Firestore.Admin.V1.ListIndexesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Firestore.Admin.V1.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Firestore.Admin.V1.GetIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Firestore.Admin.V1.DeleteIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Firestore.Admin.V1.UpdateFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Firestore.Admin.V1.Field, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Firestore.Admin.V1.GetFieldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Firestore.Admin.V1.ListFieldsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Firestore.Admin.V1.ListFieldsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :fields, 1, repeated: true, type: Google.Firestore.Admin.V1.Field
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Firestore.Admin.V1.ExportDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :collection_ids, 2, repeated: true, type: :string, json_name: "collectionIds"
  field :output_uri_prefix, 3, type: :string, json_name: "outputUriPrefix"
  field :namespace_ids, 4, repeated: true, type: :string, json_name: "namespaceIds"
  field :snapshot_time, 5, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"
end

defmodule Google.Firestore.Admin.V1.ImportDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :collection_ids, 2, repeated: true, type: :string, json_name: "collectionIds"
  field :input_uri_prefix, 3, type: :string, json_name: "inputUriPrefix"
  field :namespace_ids, 4, repeated: true, type: :string, json_name: "namespaceIds"
end

defmodule Google.Firestore.Admin.V1.FirestoreAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.firestore.admin.v1.FirestoreAdmin",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateIndex, Google.Firestore.Admin.V1.CreateIndexRequest, Google.Longrunning.Operation

  rpc :ListIndexes,
      Google.Firestore.Admin.V1.ListIndexesRequest,
      Google.Firestore.Admin.V1.ListIndexesResponse

  rpc :GetIndex, Google.Firestore.Admin.V1.GetIndexRequest, Google.Firestore.Admin.V1.Index

  rpc :DeleteIndex, Google.Firestore.Admin.V1.DeleteIndexRequest, Google.Protobuf.Empty

  rpc :GetField, Google.Firestore.Admin.V1.GetFieldRequest, Google.Firestore.Admin.V1.Field

  rpc :UpdateField, Google.Firestore.Admin.V1.UpdateFieldRequest, Google.Longrunning.Operation

  rpc :ListFields,
      Google.Firestore.Admin.V1.ListFieldsRequest,
      Google.Firestore.Admin.V1.ListFieldsResponse

  rpc :ExportDocuments,
      Google.Firestore.Admin.V1.ExportDocumentsRequest,
      Google.Longrunning.Operation

  rpc :ImportDocuments,
      Google.Firestore.Admin.V1.ImportDocumentsRequest,
      Google.Longrunning.Operation

  rpc :CreateDatabase,
      Google.Firestore.Admin.V1.CreateDatabaseRequest,
      Google.Longrunning.Operation

  rpc :GetDatabase,
      Google.Firestore.Admin.V1.GetDatabaseRequest,
      Google.Firestore.Admin.V1.Database

  rpc :ListDatabases,
      Google.Firestore.Admin.V1.ListDatabasesRequest,
      Google.Firestore.Admin.V1.ListDatabasesResponse

  rpc :UpdateDatabase,
      Google.Firestore.Admin.V1.UpdateDatabaseRequest,
      Google.Longrunning.Operation

  rpc :DeleteDatabase,
      Google.Firestore.Admin.V1.DeleteDatabaseRequest,
      Google.Longrunning.Operation
end

defmodule Google.Firestore.Admin.V1.FirestoreAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Firestore.Admin.V1.FirestoreAdmin.Service
end