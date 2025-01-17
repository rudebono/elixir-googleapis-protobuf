defmodule Google.Cloud.Aiplatform.V1beta1.Dataset.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Dataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
    type: Google.Cloud.Aiplatform.V1beta1.Dataset.LabelsEntry,
    map: true

  field :saved_queries, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SavedQuery,
    json_name: "savedQueries"

  field :encryption_spec, 11,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :metadata_artifact, 17, type: :string, json_name: "metadataArtifact", deprecated: false
  field :model_reference, 18, type: :string, json_name: "modelReference", deprecated: false
  field :satisfies_pzs, 19, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 20, type: :bool, json_name: "satisfiesPzi", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataConfig.DataItemLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataConfig.AnnotationLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ImportDataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  field :annotation_labels, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ImportDataConfig.AnnotationLabelsEntry,
    json_name: "annotationLabels",
    map: true

  field :import_schema_uri, 4, type: :string, json_name: "importSchemaUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportDataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :destination, 0

  oneof :split, 1

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :fraction_split, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ExportFractionSplit,
    json_name: "fractionSplit",
    oneof: 1

  field :annotations_filter, 2, type: :string, json_name: "annotationsFilter"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportFractionSplit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :training_fraction, 1, type: :double, json_name: "trainingFraction"
  field :validation_fraction, 2, type: :double, json_name: "validationFraction"
  field :test_fraction, 3, type: :double, json_name: "testFraction"
end
