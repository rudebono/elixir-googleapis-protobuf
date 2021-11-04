defmodule Google.Cloud.Aiplatform.V1beta1.UploadModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          model: Google.Cloud.Aiplatform.V1beta1.Model.t() | nil
        }

  defstruct [:parent, :model]

  field :parent, 1, type: :string
  field :model, 2, type: Google.Cloud.Aiplatform.V1beta1.Model

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.UploadModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.UploadModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          models: [Google.Cloud.Aiplatform.V1beta1.Model.t()],
          next_page_token: String.t()
        }

  defstruct [:models, :next_page_token]

  field :models, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: Google.Cloud.Aiplatform.V1beta1.Model.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:model, :update_mask]

  field :model, 1, type: Google.Cloud.Aiplatform.V1beta1.Model
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportModelRequest.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          export_format_id: String.t(),
          artifact_destination: Google.Cloud.Aiplatform.V1beta1.GcsDestination.t() | nil,
          image_destination:
            Google.Cloud.Aiplatform.V1beta1.ContainerRegistryDestination.t() | nil
        }

  defstruct [:export_format_id, :artifact_destination, :image_destination]

  field :export_format_id, 1, type: :string, json_name: "exportFormatId"

  field :artifact_destination, 3,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "artifactDestination"

  field :image_destination, 4,
    type: Google.Cloud.Aiplatform.V1beta1.ContainerRegistryDestination,
    json_name: "imageDestination"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          output_config: Google.Cloud.Aiplatform.V1beta1.ExportModelRequest.OutputConfig.t() | nil
        }

  defstruct [:name, :output_config]

  field :name, 1, type: :string

  field :output_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExportModelRequest.OutputConfig,
    json_name: "outputConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportModelOperationMetadata.OutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_output_uri: String.t(),
          image_output_uri: String.t()
        }

  defstruct [:artifact_output_uri, :image_output_uri]

  field :artifact_output_uri, 2, type: :string, json_name: "artifactOutputUri"
  field :image_output_uri, 3, type: :string, json_name: "imageOutputUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil,
          output_info:
            Google.Cloud.Aiplatform.V1beta1.ExportModelOperationMetadata.OutputInfo.t() | nil
        }

  defstruct [:generic_metadata, :output_info]

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :output_info, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExportModelOperationMetadata.OutputInfo,
    json_name: "outputInfo"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetModelEvaluationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelEvaluationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelEvaluationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_evaluations: [Google.Cloud.Aiplatform.V1beta1.ModelEvaluation.t()],
          next_page_token: String.t()
        }

  defstruct [:model_evaluations, :next_page_token]

  field :model_evaluations, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelEvaluation,
    json_name: "modelEvaluations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetModelEvaluationSliceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelEvaluationSlicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelEvaluationSlicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_evaluation_slices: [Google.Cloud.Aiplatform.V1beta1.ModelEvaluationSlice.t()],
          next_page_token: String.t()
        }

  defstruct [:model_evaluation_slices, :next_page_token]

  field :model_evaluation_slices, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelEvaluationSlice,
    json_name: "modelEvaluationSlices"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.ModelService"

  rpc :UploadModel,
      Google.Cloud.Aiplatform.V1beta1.UploadModelRequest,
      Google.Longrunning.Operation

  rpc :GetModel,
      Google.Cloud.Aiplatform.V1beta1.GetModelRequest,
      Google.Cloud.Aiplatform.V1beta1.Model

  rpc :ListModels,
      Google.Cloud.Aiplatform.V1beta1.ListModelsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListModelsResponse

  rpc :UpdateModel,
      Google.Cloud.Aiplatform.V1beta1.UpdateModelRequest,
      Google.Cloud.Aiplatform.V1beta1.Model

  rpc :DeleteModel,
      Google.Cloud.Aiplatform.V1beta1.DeleteModelRequest,
      Google.Longrunning.Operation

  rpc :ExportModel,
      Google.Cloud.Aiplatform.V1beta1.ExportModelRequest,
      Google.Longrunning.Operation

  rpc :GetModelEvaluation,
      Google.Cloud.Aiplatform.V1beta1.GetModelEvaluationRequest,
      Google.Cloud.Aiplatform.V1beta1.ModelEvaluation

  rpc :ListModelEvaluations,
      Google.Cloud.Aiplatform.V1beta1.ListModelEvaluationsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListModelEvaluationsResponse

  rpc :GetModelEvaluationSlice,
      Google.Cloud.Aiplatform.V1beta1.GetModelEvaluationSliceRequest,
      Google.Cloud.Aiplatform.V1beta1.ModelEvaluationSlice

  rpc :ListModelEvaluationSlices,
      Google.Cloud.Aiplatform.V1beta1.ListModelEvaluationSlicesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListModelEvaluationSlicesResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ModelService.Service
end
