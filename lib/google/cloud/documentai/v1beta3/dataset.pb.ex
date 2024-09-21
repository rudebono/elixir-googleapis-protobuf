defmodule Google.Cloud.Documentai.V1beta3.Dataset.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :UNINITIALIZED, 1
  field :INITIALIZING, 2
  field :INITIALIZED, 3
end

defmodule Google.Cloud.Documentai.V1beta3.Dataset.GCSManagedConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_prefix, 1,
    type: Google.Cloud.Documentai.V1beta3.GcsPrefix,
    json_name: "gcsPrefix",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.Dataset.DocumentWarehouseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :collection, 1, type: :string, deprecated: false
  field :schema, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.Dataset.UnmanagedDatasetConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1beta3.Dataset.SpannerIndexingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Documentai.V1beta3.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :storage_source, 0

  oneof :indexing_source, 1

  field :gcs_managed_config, 3,
    type: Google.Cloud.Documentai.V1beta3.Dataset.GCSManagedConfig,
    json_name: "gcsManagedConfig",
    oneof: 0,
    deprecated: false

  field :document_warehouse_config, 5,
    type: Google.Cloud.Documentai.V1beta3.Dataset.DocumentWarehouseConfig,
    json_name: "documentWarehouseConfig",
    oneof: 0,
    deprecated: true

  field :unmanaged_dataset_config, 6,
    type: Google.Cloud.Documentai.V1beta3.Dataset.UnmanagedDatasetConfig,
    json_name: "unmanagedDatasetConfig",
    oneof: 0,
    deprecated: false

  field :spanner_indexing_config, 4,
    type: Google.Cloud.Documentai.V1beta3.Dataset.SpannerIndexingConfig,
    json_name: "spannerIndexingConfig",
    oneof: 1,
    deprecated: false

  field :name, 1, type: :string

  field :state, 2,
    type: Google.Cloud.Documentai.V1beta3.Dataset.State,
    enum: true,
    deprecated: false

  field :satisfies_pzs, 8, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 9, type: :bool, json_name: "satisfiesPzi", deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentId.GCSManagedDocumentId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri", deprecated: false
  field :cw_doc_id, 2, type: :string, json_name: "cwDocId", deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentId.UnmanagedDocumentId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :doc_id, 1, type: :string, json_name: "docId", deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :type, 0

  field :gcs_managed_doc_id, 1,
    type: Google.Cloud.Documentai.V1beta3.DocumentId.GCSManagedDocumentId,
    json_name: "gcsManagedDocId",
    oneof: 0

  field :unmanaged_doc_id, 4,
    type: Google.Cloud.Documentai.V1beta3.DocumentId.UnmanagedDocumentId,
    json_name: "unmanagedDocId",
    oneof: 0

  field :revision_ref, 3,
    type: Google.Cloud.Documentai.V1beta3.RevisionRef,
    json_name: "revisionRef"
end

defmodule Google.Cloud.Documentai.V1beta3.DatasetSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string

  field :document_schema, 3,
    type: Google.Cloud.Documentai.V1beta3.DocumentSchema,
    json_name: "documentSchema",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.BatchDatasetDocuments.IndividualDocumentIds do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :document_ids, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.DocumentId,
    json_name: "documentIds",
    deprecated: false
end

defmodule Google.Cloud.Documentai.V1beta3.BatchDatasetDocuments do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :criteria, 0

  field :individual_document_ids, 1,
    type: Google.Cloud.Documentai.V1beta3.BatchDatasetDocuments.IndividualDocumentIds,
    json_name: "individualDocumentIds",
    oneof: 0

  field :filter, 2, type: :string, oneof: 0
end