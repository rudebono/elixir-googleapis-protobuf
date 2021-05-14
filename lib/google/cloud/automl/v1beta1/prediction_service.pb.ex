defmodule Google.Cloud.Automl.V1beta1.PredictRequest.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1beta1.PredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          payload: Google.Cloud.Automl.V1beta1.ExamplePayload.t() | nil,
          params: %{String.t() => String.t()}
        }

  defstruct [:name, :payload, :params]

  field :name, 1, type: :string
  field :payload, 2, type: Google.Cloud.Automl.V1beta1.ExamplePayload

  field :params, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.PredictRequest.ParamsEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1beta1.PredictResponse.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1beta1.PredictResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: [Google.Cloud.Automl.V1beta1.AnnotationPayload.t()],
          preprocessed_input: Google.Cloud.Automl.V1beta1.ExamplePayload.t() | nil,
          metadata: %{String.t() => String.t()}
        }

  defstruct [:payload, :preprocessed_input, :metadata]

  field :payload, 1, repeated: true, type: Google.Cloud.Automl.V1beta1.AnnotationPayload
  field :preprocessed_input, 3, type: Google.Cloud.Automl.V1beta1.ExamplePayload

  field :metadata, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.PredictResponse.MetadataEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictRequest.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_config: Google.Cloud.Automl.V1beta1.BatchPredictInputConfig.t() | nil,
          output_config: Google.Cloud.Automl.V1beta1.BatchPredictOutputConfig.t() | nil,
          params: %{String.t() => String.t()}
        }

  defstruct [:name, :input_config, :output_config, :params]

  field :name, 1, type: :string
  field :input_config, 3, type: Google.Cloud.Automl.V1beta1.BatchPredictInputConfig
  field :output_config, 4, type: Google.Cloud.Automl.V1beta1.BatchPredictOutputConfig

  field :params, 5,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.BatchPredictRequest.ParamsEntry,
    map: true
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictResult.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Automl.V1beta1.BatchPredictResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: %{String.t() => String.t()}
        }

  defstruct [:metadata]

  field :metadata, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.BatchPredictResult.MetadataEntry,
    map: true
end
