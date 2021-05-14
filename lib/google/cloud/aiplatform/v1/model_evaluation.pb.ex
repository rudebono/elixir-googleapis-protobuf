defmodule Google.Cloud.Aiplatform.V1.ModelEvaluation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          metrics_schema_uri: String.t(),
          metrics: Google.Protobuf.Value.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          slice_dimensions: [String.t()]
        }

  defstruct [:name, :metrics_schema_uri, :metrics, :create_time, :slice_dimensions]

  field :name, 1, type: :string
  field :metrics_schema_uri, 2, type: :string
  field :metrics, 3, type: Google.Protobuf.Value
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :slice_dimensions, 5, repeated: true, type: :string
end
