defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          etag: String.t(),
          source: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :create_time,
    :update_time,
    :labels,
    :etag,
    :source
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardExperiment.LabelsEntry,
    map: true

  field :etag, 7, type: :string
  field :source, 8, type: :string

  def transform_module(), do: nil
end
