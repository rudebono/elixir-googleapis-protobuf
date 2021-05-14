defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource.MlEngineModelVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          version: String.t()
        }

  defstruct [:endpoint, :version]

  field :endpoint, 1, type: :string
  field :version, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlModel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t(),
          model_display_name: String.t()
        }

  defstruct [:model, :model_display_name]

  field :model, 1, type: :string
  field :model_display_name, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlDataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: String.t(),
          dataset_display_name: String.t()
        }

  defstruct [:dataset, :dataset_display_name]

  field :dataset, 1, type: :string
  field :dataset_display_name, 4, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource.DataLabelingDataset.DataLabelingAnnotatedDataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotated_dataset: String.t(),
          annotated_dataset_display_name: String.t()
        }

  defstruct [:annotated_dataset, :annotated_dataset_display_name]

  field :annotated_dataset, 1, type: :string
  field :annotated_dataset_display_name, 3, type: :string
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

  defstruct [:dataset, :dataset_display_name, :data_labeling_annotated_datasets]

  field :dataset, 1, type: :string
  field :dataset_display_name, 4, type: :string

  field :data_labeling_annotated_datasets, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.MigratableResource.DataLabelingDataset.DataLabelingAnnotatedDataset
end

defmodule Google.Cloud.Aiplatform.V1beta1.MigratableResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: {atom, any},
          last_migrate_time: Google.Protobuf.Timestamp.t() | nil,
          last_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:resource, :last_migrate_time, :last_update_time]

  oneof :resource, 0

  field :ml_engine_model_version, 1,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource.MlEngineModelVersion,
    oneof: 0

  field :automl_model, 2,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlModel,
    oneof: 0

  field :automl_dataset, 3,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource.AutomlDataset,
    oneof: 0

  field :data_labeling_dataset, 4,
    type: Google.Cloud.Aiplatform.V1beta1.MigratableResource.DataLabelingDataset,
    oneof: 0

  field :last_migrate_time, 5, type: Google.Protobuf.Timestamp
  field :last_update_time, 6, type: Google.Protobuf.Timestamp
end
