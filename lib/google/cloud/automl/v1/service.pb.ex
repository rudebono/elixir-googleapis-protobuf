defmodule Google.Cloud.Automl.V1.CreateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          dataset: Google.Cloud.Automl.V1.Dataset.t() | nil
        }

  defstruct [:parent, :dataset]

  field :parent, 1, type: :string
  field :dataset, 2, type: Google.Cloud.Automl.V1.Dataset
end

defmodule Google.Cloud.Automl.V1.GetDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Automl.V1.ListDatasetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32
  field :page_token, 6, type: :string
end

defmodule Google.Cloud.Automl.V1.ListDatasetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          datasets: [Google.Cloud.Automl.V1.Dataset.t()],
          next_page_token: String.t()
        }

  defstruct [:datasets, :next_page_token]

  field :datasets, 1, repeated: true, type: Google.Cloud.Automl.V1.Dataset
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Automl.V1.UpdateDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset: Google.Cloud.Automl.V1.Dataset.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:dataset, :update_mask]

  field :dataset, 1, type: Google.Cloud.Automl.V1.Dataset
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Automl.V1.DeleteDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Automl.V1.ImportDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_config: Google.Cloud.Automl.V1.InputConfig.t() | nil
        }

  defstruct [:name, :input_config]

  field :name, 1, type: :string
  field :input_config, 3, type: Google.Cloud.Automl.V1.InputConfig
end

defmodule Google.Cloud.Automl.V1.ExportDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          output_config: Google.Cloud.Automl.V1.OutputConfig.t() | nil
        }

  defstruct [:name, :output_config]

  field :name, 1, type: :string
  field :output_config, 3, type: Google.Cloud.Automl.V1.OutputConfig
end

defmodule Google.Cloud.Automl.V1.GetAnnotationSpecRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Automl.V1.CreateModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          model: Google.Cloud.Automl.V1.Model.t() | nil
        }

  defstruct [:parent, :model]

  field :parent, 1, type: :string
  field :model, 4, type: Google.Cloud.Automl.V1.Model
end

defmodule Google.Cloud.Automl.V1.GetModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Automl.V1.ListModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32
  field :page_token, 6, type: :string
end

defmodule Google.Cloud.Automl.V1.ListModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: [Google.Cloud.Automl.V1.Model.t()],
          next_page_token: String.t()
        }

  defstruct [:model, :next_page_token]

  field :model, 1, repeated: true, type: Google.Cloud.Automl.V1.Model
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Automl.V1.DeleteModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Automl.V1.UpdateModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: Google.Cloud.Automl.V1.Model.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:model, :update_mask]

  field :model, 1, type: Google.Cloud.Automl.V1.Model
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Automl.V1.DeployModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_deployment_metadata: {atom, any},
          name: String.t()
        }

  defstruct [:model_deployment_metadata, :name]

  oneof :model_deployment_metadata, 0

  field :image_object_detection_model_deployment_metadata, 2,
    type: Google.Cloud.Automl.V1.ImageObjectDetectionModelDeploymentMetadata,
    oneof: 0

  field :image_classification_model_deployment_metadata, 4,
    type: Google.Cloud.Automl.V1.ImageClassificationModelDeploymentMetadata,
    oneof: 0

  field :name, 1, type: :string
end

defmodule Google.Cloud.Automl.V1.UndeployModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Automl.V1.ExportModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          output_config: Google.Cloud.Automl.V1.ModelExportOutputConfig.t() | nil
        }

  defstruct [:name, :output_config]

  field :name, 1, type: :string
  field :output_config, 3, type: Google.Cloud.Automl.V1.ModelExportOutputConfig
end

defmodule Google.Cloud.Automl.V1.GetModelEvaluationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Automl.V1.ListModelEvaluationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32
  field :page_token, 6, type: :string
end

defmodule Google.Cloud.Automl.V1.ListModelEvaluationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_evaluation: [Google.Cloud.Automl.V1.ModelEvaluation.t()],
          next_page_token: String.t()
        }

  defstruct [:model_evaluation, :next_page_token]

  field :model_evaluation, 1, repeated: true, type: Google.Cloud.Automl.V1.ModelEvaluation
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Automl.V1.AutoMl.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.automl.v1.AutoMl"

  rpc :CreateDataset, Google.Cloud.Automl.V1.CreateDatasetRequest, Google.Longrunning.Operation

  rpc :GetDataset, Google.Cloud.Automl.V1.GetDatasetRequest, Google.Cloud.Automl.V1.Dataset

  rpc :ListDatasets,
      Google.Cloud.Automl.V1.ListDatasetsRequest,
      Google.Cloud.Automl.V1.ListDatasetsResponse

  rpc :UpdateDataset, Google.Cloud.Automl.V1.UpdateDatasetRequest, Google.Cloud.Automl.V1.Dataset

  rpc :DeleteDataset, Google.Cloud.Automl.V1.DeleteDatasetRequest, Google.Longrunning.Operation

  rpc :ImportData, Google.Cloud.Automl.V1.ImportDataRequest, Google.Longrunning.Operation

  rpc :ExportData, Google.Cloud.Automl.V1.ExportDataRequest, Google.Longrunning.Operation

  rpc :GetAnnotationSpec,
      Google.Cloud.Automl.V1.GetAnnotationSpecRequest,
      Google.Cloud.Automl.V1.AnnotationSpec

  rpc :CreateModel, Google.Cloud.Automl.V1.CreateModelRequest, Google.Longrunning.Operation

  rpc :GetModel, Google.Cloud.Automl.V1.GetModelRequest, Google.Cloud.Automl.V1.Model

  rpc :ListModels,
      Google.Cloud.Automl.V1.ListModelsRequest,
      Google.Cloud.Automl.V1.ListModelsResponse

  rpc :DeleteModel, Google.Cloud.Automl.V1.DeleteModelRequest, Google.Longrunning.Operation

  rpc :UpdateModel, Google.Cloud.Automl.V1.UpdateModelRequest, Google.Cloud.Automl.V1.Model

  rpc :DeployModel, Google.Cloud.Automl.V1.DeployModelRequest, Google.Longrunning.Operation

  rpc :UndeployModel, Google.Cloud.Automl.V1.UndeployModelRequest, Google.Longrunning.Operation

  rpc :ExportModel, Google.Cloud.Automl.V1.ExportModelRequest, Google.Longrunning.Operation

  rpc :GetModelEvaluation,
      Google.Cloud.Automl.V1.GetModelEvaluationRequest,
      Google.Cloud.Automl.V1.ModelEvaluation

  rpc :ListModelEvaluations,
      Google.Cloud.Automl.V1.ListModelEvaluationsRequest,
      Google.Cloud.Automl.V1.ListModelEvaluationsResponse
end

defmodule Google.Cloud.Automl.V1.AutoMl.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Automl.V1.AutoMl.Service
end
