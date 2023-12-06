defmodule Google.Cloud.Aiplatform.V1.ExportDataConfig.ExportUse do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EXPORT_USE_UNSPECIFIED, 0
  field :CUSTOM_CODE_TRAINING, 6
end

defmodule Google.Cloud.Aiplatform.V1.Dataset.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 16, type: :string
  field :metadata_schema_uri, 3, type: :string, json_name: "metadataSchemaUri", deprecated: false
  field :metadata, 8, type: Google.Protobuf.Value, deprecated: false
  field :data_item_count, 10, type: :int64, json_name: "dataItemCount", deprecated: false

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
    type: Google.Cloud.Aiplatform.V1.Dataset.LabelsEntry,
    map: true

  field :saved_queries, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.SavedQuery,
    json_name: "savedQueries"

  field :encryption_spec, 11,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :metadata_artifact, 17, type: :string, json_name: "metadataArtifact", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ImportDataConfig.DataItemLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ImportDataConfig.AnnotationLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ImportDataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :data_item_labels, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ImportDataConfig.DataItemLabelsEntry,
    json_name: "dataItemLabels",
    map: true

  field :annotation_labels, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ImportDataConfig.AnnotationLabelsEntry,
    json_name: "annotationLabels",
    map: true

  field :import_schema_uri, 4, type: :string, json_name: "importSchemaUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ExportDataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :destination, 0

  oneof :split, 1

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :fraction_split, 5,
    type: Google.Cloud.Aiplatform.V1.ExportFractionSplit,
    json_name: "fractionSplit",
    oneof: 1

  field :filter_split, 7,
    type: Google.Cloud.Aiplatform.V1.ExportFilterSplit,
    json_name: "filterSplit",
    oneof: 1

  field :annotations_filter, 2, type: :string, json_name: "annotationsFilter"
  field :saved_query_id, 11, type: :string, json_name: "savedQueryId"
  field :annotation_schema_uri, 12, type: :string, json_name: "annotationSchemaUri"

  field :export_use, 4,
    type: Google.Cloud.Aiplatform.V1.ExportDataConfig.ExportUse,
    json_name: "exportUse",
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1.ExportFractionSplit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :training_fraction, 1, type: :double, json_name: "trainingFraction"
  field :validation_fraction, 2, type: :double, json_name: "validationFraction"
  field :test_fraction, 3, type: :double, json_name: "testFraction"
end

defmodule Google.Cloud.Aiplatform.V1.ExportFilterSplit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :training_filter, 1, type: :string, json_name: "trainingFilter", deprecated: false
  field :validation_filter, 2, type: :string, json_name: "validationFilter", deprecated: false
  field :test_filter, 3, type: :string, json_name: "testFilter", deprecated: false
end