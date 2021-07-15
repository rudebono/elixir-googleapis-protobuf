defmodule Google.Cloud.Aiplatform.V1.Artifact.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :LIVE

  field :STATE_UNSPECIFIED, 0

  field :PENDING, 1

  field :LIVE, 2
end

defmodule Google.Cloud.Aiplatform.V1.Artifact.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1.Artifact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          uri: String.t(),
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Aiplatform.V1.Artifact.State.t()
        }

  defstruct [:name, :display_name, :uri, :etag, :labels, :create_time, :update_time, :state]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :uri, 6, type: :string
  field :etag, 9, type: :string

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Artifact.LabelsEntry,
    map: true

  field :create_time, 11, type: Google.Protobuf.Timestamp
  field :update_time, 12, type: Google.Protobuf.Timestamp
  field :state, 13, type: Google.Cloud.Aiplatform.V1.Artifact.State, enum: true
end
