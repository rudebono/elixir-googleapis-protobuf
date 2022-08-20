defmodule Google.Firestore.Admin.V1beta2.CreateIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :index, 2, type: Google.Firestore.Admin.V1beta2.Index
end

defmodule Google.Firestore.Admin.V1beta2.ListIndexesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Firestore.Admin.V1beta2.ListIndexesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Firestore.Admin.V1beta2.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Firestore.Admin.V1beta2.GetIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Firestore.Admin.V1beta2.DeleteIndexRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Firestore.Admin.V1beta2.UpdateFieldRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :field, 1, type: Google.Firestore.Admin.V1beta2.Field
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Firestore.Admin.V1beta2.GetFieldRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Firestore.Admin.V1beta2.ListFieldsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Firestore.Admin.V1beta2.ListFieldsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fields, 1, repeated: true, type: Google.Firestore.Admin.V1beta2.Field
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Firestore.Admin.V1beta2.ExportDocumentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :collection_ids, 2, repeated: true, type: :string, json_name: "collectionIds"
  field :output_uri_prefix, 3, type: :string, json_name: "outputUriPrefix"
end

defmodule Google.Firestore.Admin.V1beta2.ImportDocumentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :collection_ids, 2, repeated: true, type: :string, json_name: "collectionIds"
  field :input_uri_prefix, 3, type: :string, json_name: "inputUriPrefix"
end

defmodule Google.Firestore.Admin.V1beta2.FirestoreAdmin.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.firestore.admin.v1beta2.FirestoreAdmin",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateIndex,
      Google.Firestore.Admin.V1beta2.CreateIndexRequest,
      Google.Longrunning.Operation

  rpc :ListIndexes,
      Google.Firestore.Admin.V1beta2.ListIndexesRequest,
      Google.Firestore.Admin.V1beta2.ListIndexesResponse

  rpc :GetIndex,
      Google.Firestore.Admin.V1beta2.GetIndexRequest,
      Google.Firestore.Admin.V1beta2.Index

  rpc :DeleteIndex, Google.Firestore.Admin.V1beta2.DeleteIndexRequest, Google.Protobuf.Empty

  rpc :GetField,
      Google.Firestore.Admin.V1beta2.GetFieldRequest,
      Google.Firestore.Admin.V1beta2.Field

  rpc :UpdateField,
      Google.Firestore.Admin.V1beta2.UpdateFieldRequest,
      Google.Longrunning.Operation

  rpc :ListFields,
      Google.Firestore.Admin.V1beta2.ListFieldsRequest,
      Google.Firestore.Admin.V1beta2.ListFieldsResponse

  rpc :ExportDocuments,
      Google.Firestore.Admin.V1beta2.ExportDocumentsRequest,
      Google.Longrunning.Operation

  rpc :ImportDocuments,
      Google.Firestore.Admin.V1beta2.ImportDocumentsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Firestore.Admin.V1beta2.FirestoreAdmin.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Firestore.Admin.V1beta2.FirestoreAdmin.Service
end