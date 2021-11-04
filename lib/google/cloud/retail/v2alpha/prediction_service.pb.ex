defmodule Google.Cloud.Retail.V2alpha.PredictRequest.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.PredictRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.PredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          placement: String.t(),
          user_event: Google.Cloud.Retail.V2alpha.UserEvent.t() | nil,
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
  field :user_event, 2, type: Google.Cloud.Retail.V2alpha.UserEvent, json_name: "userEvent"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
  field :validate_only, 6, type: :bool, json_name: "validateOnly"

  field :params, 7,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.PredictRequest.ParamsEntry,
    map: true

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.PredictRequest.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.PredictResponse.PredictionResult.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.PredictResponse.PredictionResult do
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
    type: Google.Cloud.Retail.V2alpha.PredictResponse.PredictionResult.MetadataEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.PredictResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Retail.V2alpha.PredictResponse.PredictionResult.t()],
          attribution_token: String.t(),
          missing_ids: [String.t()],
          validate_only: boolean
        }

  defstruct [:results, :attribution_token, :missing_ids, :validate_only]

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.PredictResponse.PredictionResult

  field :attribution_token, 2, type: :string, json_name: "attributionToken"
  field :missing_ids, 3, repeated: true, type: :string, json_name: "missingIds"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2alpha.PredictionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2alpha.PredictionService"

  rpc :Predict,
      Google.Cloud.Retail.V2alpha.PredictRequest,
      Google.Cloud.Retail.V2alpha.PredictResponse
end

defmodule Google.Cloud.Retail.V2alpha.PredictionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.PredictionService.Service
end
