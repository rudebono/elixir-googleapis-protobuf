defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension: String.t(),
          value: String.t()
        }

  defstruct [:dimension, :value]

  field :dimension, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          slice: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice.t() | nil,
          metrics_schema_uri: String.t(),
          metrics: Google.Protobuf.Value.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :slice, :metrics_schema_uri, :metrics, :create_time]

  field :name, 1, type: :string
  field :slice, 2, type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice
  field :metrics_schema_uri, 3, type: :string, json_name: "metricsSchemaUri"
  field :metrics, 4, type: Google.Protobuf.Value
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"

  def transform_module(), do: nil
end
