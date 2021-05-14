defmodule Google.Cloud.Automl.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: {atom, any},
          progress_percent: integer,
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:details, :progress_percent, :partial_failures, :create_time, :update_time]

  oneof :details, 0
  field :delete_details, 8, type: Google.Cloud.Automl.V1beta1.DeleteOperationMetadata, oneof: 0

  field :deploy_model_details, 24,
    type: Google.Cloud.Automl.V1beta1.DeployModelOperationMetadata,
    oneof: 0

  field :undeploy_model_details, 25,
    type: Google.Cloud.Automl.V1beta1.UndeployModelOperationMetadata,
    oneof: 0

  field :create_model_details, 10,
    type: Google.Cloud.Automl.V1beta1.CreateModelOperationMetadata,
    oneof: 0

  field :import_data_details, 15,
    type: Google.Cloud.Automl.V1beta1.ImportDataOperationMetadata,
    oneof: 0

  field :batch_predict_details, 16,
    type: Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata,
    oneof: 0

  field :export_data_details, 21,
    type: Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata,
    oneof: 0

  field :export_model_details, 22,
    type: Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata,
    oneof: 0

  field :export_evaluated_examples_details, 26,
    type: Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata,
    oneof: 0

  field :progress_percent, 13, type: :int32
  field :partial_failures, 2, repeated: true, type: Google.Rpc.Status
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Automl.V1beta1.DeleteOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Automl.V1beta1.DeployModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Automl.V1beta1.UndeployModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Automl.V1beta1.CreateModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Automl.V1beta1.ImportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata.ExportDataOutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_location: {atom, any}
        }

  defstruct [:output_location]

  oneof :output_location, 0
  field :gcs_output_directory, 1, type: :string, oneof: 0
  field :bigquery_output_dataset, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_info:
            Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata.ExportDataOutputInfo.t() | nil
        }

  defstruct [:output_info]

  field :output_info, 1,
    type: Google.Cloud.Automl.V1beta1.ExportDataOperationMetadata.ExportDataOutputInfo
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata.BatchPredictOutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_location: {atom, any}
        }

  defstruct [:output_location]

  oneof :output_location, 0
  field :gcs_output_directory, 1, type: :string, oneof: 0
  field :bigquery_output_dataset, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Automl.V1beta1.BatchPredictInputConfig.t() | nil,
          output_info:
            Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata.BatchPredictOutputInfo.t()
            | nil
        }

  defstruct [:input_config, :output_info]

  field :input_config, 1, type: Google.Cloud.Automl.V1beta1.BatchPredictInputConfig

  field :output_info, 2,
    type: Google.Cloud.Automl.V1beta1.BatchPredictOperationMetadata.BatchPredictOutputInfo
end

defmodule Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata.ExportModelOutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_output_directory: String.t()
        }

  defstruct [:gcs_output_directory]

  field :gcs_output_directory, 1, type: :string
end

defmodule Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_info:
            Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata.ExportModelOutputInfo.t()
            | nil
        }

  defstruct [:output_info]

  field :output_info, 2,
    type: Google.Cloud.Automl.V1beta1.ExportModelOperationMetadata.ExportModelOutputInfo
end

defmodule Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata.ExportEvaluatedExamplesOutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bigquery_output_dataset: String.t()
        }

  defstruct [:bigquery_output_dataset]

  field :bigquery_output_dataset, 2, type: :string
end

defmodule Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_info:
            Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata.ExportEvaluatedExamplesOutputInfo.t()
            | nil
        }

  defstruct [:output_info]

  field :output_info, 2,
    type:
      Google.Cloud.Automl.V1beta1.ExportEvaluatedExamplesOperationMetadata.ExportEvaluatedExamplesOutputInfo
end
