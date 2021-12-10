defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource.MlEngineModelVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          version: String.t()
        }

  defstruct endpoint: "",
            version: ""

  field :endpoint, 1, type: :string
  field :version, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlModel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t(),
          model_display_name: String.t()
        }

  defstruct model: "",
            model_display_name: ""

  field :model, 1, type: :string, deprecated: false
  field :model_display_name, 3, type: :string, json_name: "modelDisplayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlDataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          dataset_display_name: String.t()
        }

  defstruct dataset: "",
            dataset_display_name: ""

  field :dataset, 1, type: :string, deprecated: false
  field :dataset_display_name, 4, type: :string, json_name: "datasetDisplayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource.DataLabelingDataset.DataLabelingAnnotatedDataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotated_dataset: String.t(),
          annotated_dataset_display_name: String.t()
        }

  defstruct annotated_dataset: "",
            annotated_dataset_display_name: ""

  field :annotated_dataset, 1, type: :string, json_name: "annotatedDataset", deprecated: false

  field :annotated_dataset_display_name, 3,
    type: :string,
    json_name: "annotatedDatasetDisplayName"
end
defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource.DataLabelingDataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          dataset_display_name: String.t(),
          data_labeling_annotated_datasets: [
            Google.Cloud.Aiplatform.V1beta1.MigratableResource.DataLabelingDataset.DataLabelingAnnotatedDataset.t()
          ]
        }

  defstruct dataset: "",
            dataset_display_name: "",
            data_labeling_annotated_datasets: []

  field :dataset, 1, type: :string, deprecated: false
  field :dataset_display_name, 4, type: :string, json_name: "datasetDisplayName"

  field :data_labeling_annotated_datasets, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.MigratableResource.DataLabelingDataset.DataLabelingAnnotatedDataset,
    json_name: "dataLabelingAnnotatedDatasets"
end
defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource:
            {:ml_engine_model_version,
             Google.Cloud.Aiplatform.V1beta1.MigratableResource.MlEngineModelVersion.t() | nil}
            | {:automl_model,
               Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlModel.t() | nil}
            | {:automl_dataset,
               Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlDataset.t() | nil}
            | {:data_labeling_dataset,
               Google.Cloud.Aiplatform.V1beta1.MigratableResource.DataLabelingDataset.t() | nil},
          last_migrate_time: Google.Protobuf.Timestamp.t() | nil,
          last_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct resource: nil,
            last_migrate_time: nil,
            last_update_time: nil

  oneof :resource, 0

  field :ml_engine_model_version, 1,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource.MlEngineModelVersion,
    json_name: "mlEngineModelVersion",
    oneof: 0,
    deprecated: false

  field :automl_model, 2,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlModel,
    json_name: "automlModel",
    oneof: 0,
    deprecated: false

  field :automl_dataset, 3,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlDataset,
    json_name: "automlDataset",
    oneof: 0,
    deprecated: false

  field :data_labeling_dataset, 4,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource.DataLabelingDataset,
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
