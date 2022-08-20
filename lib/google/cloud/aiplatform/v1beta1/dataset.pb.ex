defmodule Google.Cloud.Aiplatform.V1beta1.Dataset.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Dataset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 16, type: :string, deprecated: false
  field :metadata_schema_uri, 3, type: :string, json_name: "metadataSchemaUri", deprecated: false
  field :metadata, 8, type: Google.Protobuf.Value, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Dataset.LabelsEntry,
    map: true

  field :encryption_spec, 11,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataConfig.DataItemLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :data_item_labels, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ImportDataConfig.DataItemLabelsEntry,
    json_name: "dataItemLabels",
    map: true

  field :import_schema_uri, 4, type: :string, json_name: "importSchemaUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportDataConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :annotations_filter, 2, type: :string, json_name: "annotationsFilter"
end