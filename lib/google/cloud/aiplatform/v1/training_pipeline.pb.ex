defmodule Google.Cloud.Aiplatform.V1.TrainingPipeline.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.TrainingPipeline do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :input_data_config, 3,
    type: Google.Cloud.Aiplatform.V1.InputDataConfig,
    json_name: "inputDataConfig"

  field :training_task_definition, 4,
    type: :string,
    json_name: "trainingTaskDefinition",
    deprecated: false

  field :training_task_inputs, 5,
    type: Google.Protobuf.Value,
    json_name: "trainingTaskInputs",
    deprecated: false

  field :training_task_metadata, 6,
    type: Google.Protobuf.Value,
    json_name: "trainingTaskMetadata",
    deprecated: false

  field :model_to_upload, 7, type: Google.Cloud.Aiplatform.V1.Model, json_name: "modelToUpload"
  field :model_id, 22, type: :string, json_name: "modelId", deprecated: false
  field :parent_model, 21, type: :string, json_name: "parentModel", deprecated: false
  field :state, 9, type: Google.Cloud.Aiplatform.V1.PipelineState, enum: true, deprecated: false
  field :error, 10, type: Google.Rpc.Status, deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :end_time, 13, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 15,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TrainingPipeline.LabelsEntry,
    map: true

  field :encryption_spec, 18,
    type: Google.Cloud.Aiplatform.V1.EncryptionSpec,
    json_name: "encryptionSpec"
end

defmodule Google.Cloud.Aiplatform.V1.InputDataConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :split, 0

  oneof :destination, 1

  field :fraction_split, 2,
    type: Google.Cloud.Aiplatform.V1.FractionSplit,
    json_name: "fractionSplit",
    oneof: 0

  field :filter_split, 3,
    type: Google.Cloud.Aiplatform.V1.FilterSplit,
    json_name: "filterSplit",
    oneof: 0

  field :predefined_split, 4,
    type: Google.Cloud.Aiplatform.V1.PredefinedSplit,
    json_name: "predefinedSplit",
    oneof: 0

  field :timestamp_split, 5,
    type: Google.Cloud.Aiplatform.V1.TimestampSplit,
    json_name: "timestampSplit",
    oneof: 0

  field :stratified_split, 12,
    type: Google.Cloud.Aiplatform.V1.StratifiedSplit,
    json_name: "stratifiedSplit",
    oneof: 0

  field :gcs_destination, 8,
    type: Google.Cloud.Aiplatform.V1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 1

  field :bigquery_destination, 10,
    type: Google.Cloud.Aiplatform.V1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 1

  field :dataset_id, 1, type: :string, json_name: "datasetId", deprecated: false
  field :annotations_filter, 6, type: :string, json_name: "annotationsFilter"
  field :annotation_schema_uri, 9, type: :string, json_name: "annotationSchemaUri"
  field :saved_query_id, 7, type: :string, json_name: "savedQueryId"
  field :persist_ml_use_assignment, 11, type: :bool, json_name: "persistMlUseAssignment"
end

defmodule Google.Cloud.Aiplatform.V1.FractionSplit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :training_fraction, 1, type: :double, json_name: "trainingFraction"
  field :validation_fraction, 2, type: :double, json_name: "validationFraction"
  field :test_fraction, 3, type: :double, json_name: "testFraction"
end

defmodule Google.Cloud.Aiplatform.V1.FilterSplit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :training_filter, 1, type: :string, json_name: "trainingFilter", deprecated: false
  field :validation_filter, 2, type: :string, json_name: "validationFilter", deprecated: false
  field :test_filter, 3, type: :string, json_name: "testFilter", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PredefinedSplit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.TimestampSplit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :training_fraction, 1, type: :double, json_name: "trainingFraction"
  field :validation_fraction, 2, type: :double, json_name: "validationFraction"
  field :test_fraction, 3, type: :double, json_name: "testFraction"
  field :key, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StratifiedSplit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :training_fraction, 1, type: :double, json_name: "trainingFraction"
  field :validation_fraction, 2, type: :double, json_name: "validationFraction"
  field :test_fraction, 3, type: :double, json_name: "testFraction"
  field :key, 4, type: :string, deprecated: false
end