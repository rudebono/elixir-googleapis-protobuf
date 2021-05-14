defmodule Google.Cloud.Recommendationengine.V1beta1.PredictRequest.ParamsEntry do
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

defmodule Google.Cloud.Recommendationengine.V1beta1.PredictRequest.LabelsEntry do
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

defmodule Google.Cloud.Recommendationengine.V1beta1.PredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          user_event: Google.Cloud.Recommendationengine.V1beta1.UserEvent.t() | nil,
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          dry_run: boolean,
          params: %{String.t() => Google.Protobuf.Value.t() | nil},
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :user_event, :page_size, :page_token, :filter, :dry_run, :params, :labels]

  field :name, 1, type: :string
  field :user_event, 2, type: Google.Cloud.Recommendationengine.V1beta1.UserEvent
  field :page_size, 7, type: :int32
  field :page_token, 8, type: :string
  field :filter, 3, type: :string
  field :dry_run, 4, type: :bool

  field :params, 6,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.PredictRequest.ParamsEntry,
    map: true

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.PredictRequest.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Recommendationengine.V1beta1.PredictResponse.PredictionResult.ItemMetadataEntry do
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

defmodule Google.Cloud.Recommendationengine.V1beta1.PredictResponse.PredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          item_metadata: %{String.t() => Google.Protobuf.Value.t() | nil}
        }

  defstruct [:id, :item_metadata]

  field :id, 1, type: :string

  field :item_metadata, 2,
    repeated: true,
    type:
      Google.Cloud.Recommendationengine.V1beta1.PredictResponse.PredictionResult.ItemMetadataEntry,
    map: true
end

defmodule Google.Cloud.Recommendationengine.V1beta1.PredictResponse.MetadataEntry do
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

defmodule Google.Cloud.Recommendationengine.V1beta1.PredictResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [
            Google.Cloud.Recommendationengine.V1beta1.PredictResponse.PredictionResult.t()
          ],
          recommendation_token: String.t(),
          items_missing_in_catalog: [String.t()],
          dry_run: boolean,
          metadata: %{String.t() => Google.Protobuf.Value.t() | nil},
          next_page_token: String.t()
        }

  defstruct [
    :results,
    :recommendation_token,
    :items_missing_in_catalog,
    :dry_run,
    :metadata,
    :next_page_token
  ]

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.PredictResponse.PredictionResult

  field :recommendation_token, 2, type: :string
  field :items_missing_in_catalog, 3, repeated: true, type: :string
  field :dry_run, 4, type: :bool

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.PredictResponse.MetadataEntry,
    map: true

  field :next_page_token, 6, type: :string
end
