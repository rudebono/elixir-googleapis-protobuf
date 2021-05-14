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
end

defmodule Google.Cloud.Aiplatform.V1beta1.UploadModelOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.UploadModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
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
  field :next_page_token, 2, type: :string
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
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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

  field :export_format_id, 1, type: :string
  field :artifact_destination, 3, type: Google.Cloud.Aiplatform.V1beta1.GcsDestination
  field :image_destination, 4, type: Google.Cloud.Aiplatform.V1beta1.ContainerRegistryDestination
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
  field :output_config, 2, type: Google.Cloud.Aiplatform.V1beta1.ExportModelRequest.OutputConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportModelOperationMetadata.OutputInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_output_uri: String.t(),
          image_output_uri: String.t()
        }

  defstruct [:artifact_output_uri, :image_output_uri]

  field :artifact_output_uri, 2, type: :string
  field :image_output_uri, 3, type: :string
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

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata

  field :output_info, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExportModelOperationMetadata.OutputInfo
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExportModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetModelEvaluationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
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
    type: Google.Cloud.Aiplatform.V1beta1.ModelEvaluation

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetModelEvaluationSliceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
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
    type: Google.Cloud.Aiplatform.V1beta1.ModelEvaluationSlice

  field :next_page_token, 2, type: :string
end
