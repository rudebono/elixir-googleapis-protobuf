defmodule Google.Cloud.Aiplatform.V1.MigratableResource.MlEngineModelVersion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :endpoint, 1, type: :string
  field :version, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.MigratableResource.AutomlModel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :model_display_name, 3, type: :string, json_name: "modelDisplayName"
end
defmodule Google.Cloud.Aiplatform.V1.MigratableResource.AutomlDataset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :dataset_display_name, 4, type: :string, json_name: "datasetDisplayName"
end
defmodule Google.Cloud.Aiplatform.V1.MigratableResource.DataLabelingDataset.DataLabelingAnnotatedDataset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :annotated_dataset, 1, type: :string, json_name: "annotatedDataset", deprecated: false

  field :annotated_dataset_display_name, 3,
    type: :string,
    json_name: "annotatedDatasetDisplayName"
end
defmodule Google.Cloud.Aiplatform.V1.MigratableResource.DataLabelingDataset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
  field :dataset_display_name, 4, type: :string, json_name: "datasetDisplayName"

  field :data_labeling_annotated_datasets, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1.MigratableResource.DataLabelingDataset.DataLabelingAnnotatedDataset,
    json_name: "dataLabelingAnnotatedDatasets"
end
defmodule Google.Cloud.Aiplatform.V1.MigratableResource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :resource, 0

  field :ml_engine_model_version, 1,
    type: Google.Cloud.Aiplatform.V1.MigratableResource.MlEngineModelVersion,
    json_name: "mlEngineModelVersion",
    oneof: 0,
    deprecated: false

  field :automl_model, 2,
    type: Google.Cloud.Aiplatform.V1.MigratableResource.AutomlModel,
    json_name: "automlModel",
    oneof: 0,
    deprecated: false

  field :automl_dataset, 3,
    type: Google.Cloud.Aiplatform.V1.MigratableResource.AutomlDataset,
    json_name: "automlDataset",
    oneof: 0,
    deprecated: false

  field :data_labeling_dataset, 4,
    type: Google.Cloud.Aiplatform.V1.MigratableResource.DataLabelingDataset,
    json_name: "dataLabelingDataset",
    oneof: 0,
    deprecated: false

  field :last_migrate_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "lastMigrateTime",
    deprecated: false

  field :last_update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false
end
