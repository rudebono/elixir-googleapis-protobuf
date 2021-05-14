defmodule Google.Cloud.Retail.V2beta.PredictRequest.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Retail.V2beta.PredictRequest.LabelsEntry do
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

defmodule Google.Cloud.Retail.V2beta.PredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          placement: String.t(),
          user_event: Google.Cloud.Retail.V2beta.UserEvent.t() | nil,
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          validate_only: boolean,
          params: %{String.t() => Google.Protobuf.Value.t() | nil},
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :placement,
    :user_event,
    :page_size,
    :page_token,
    :filter,
    :validate_only,
    :params,
    :labels
  ]

  field :placement, 1, type: :string
  field :user_event, 2, type: Google.Cloud.Retail.V2beta.UserEvent
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :filter, 5, type: :string
  field :validate_only, 6, type: :bool

  field :params, 7,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.PredictRequest.ParamsEntry,
    map: true

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.PredictRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Retail.V2beta.PredictResponse.PredictionResult.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Retail.V2beta.PredictResponse.PredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          metadata: %{String.t() => Google.Protobuf.Value.t() | nil}
        }

  defstruct [:id, :metadata]

  field :id, 1, type: :string

  field :metadata, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.PredictResponse.PredictionResult.MetadataEntry,
    map: true
end

defmodule Google.Cloud.Retail.V2beta.PredictResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Retail.V2beta.PredictResponse.PredictionResult.t()],
          attribution_token: String.t(),
          missing_ids: [String.t()],
          validate_only: boolean
        }

  defstruct [:results, :attribution_token, :missing_ids, :validate_only]

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.PredictResponse.PredictionResult

  field :attribution_token, 2, type: :string
  field :missing_ids, 3, repeated: true, type: :string
  field :validate_only, 4, type: :bool
end

defmodule Google.Cloud.Retail.V2beta.PredictionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2beta.PredictionService"

  rpc :Predict,
      Google.Cloud.Retail.V2beta.PredictRequest,
      Google.Cloud.Retail.V2beta.PredictResponse
end

defmodule Google.Cloud.Retail.V2beta.PredictionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.PredictionService.Service
end
