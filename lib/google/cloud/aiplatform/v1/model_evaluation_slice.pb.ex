defmodule Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension: String.t(),
          value: String.t()
        }

  defstruct dimension: "",
            value: ""

  field :dimension, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
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

  defstruct name: "",
            slice: nil,
            metrics_schema_uri: "",
            metrics: nil,
            create_time: nil

  field :name, 1, type: :string, deprecated: false
  field :slice, 2, type: Google.Cloud.Aiplatform.V1.ModelEvaluationSlice.Slice, deprecated: false
  field :metrics_schema_uri, 3, type: :string, json_name: "metricsSchemaUri", deprecated: false
  field :metrics, 4, type: Google.Protobuf.Value, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end
