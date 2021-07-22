defmodule Google.Cloud.Aiplatform.V1beta1.Execution.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :NEW
          | :RUNNING
          | :COMPLETE
          | :FAILED
          | :CACHED
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :NEW, 1

  field :RUNNING, 2

  field :COMPLETE, 3

  field :FAILED, 4

  field :CACHED, 5

  field :CANCELLED, 6
end

defmodule Google.Cloud.Aiplatform.V1beta1.Execution.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1beta1.Execution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          state: Google.Cloud.Aiplatform.V1beta1.Execution.State.t(),
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          schema_title: String.t(),
          schema_version: String.t(),
          metadata: Google.Protobuf.Struct.t() | nil,
          description: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :state,
    :etag,
    :labels,
    :create_time,
    :update_time,
    :schema_title,
    :schema_version,
    :metadata,
    :description
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :state, 6, type: Google.Cloud.Aiplatform.V1beta1.Execution.State, enum: true
  field :etag, 9, type: :string

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Execution.LabelsEntry,
    map: true

  field :create_time, 11, type: Google.Protobuf.Timestamp
  field :update_time, 12, type: Google.Protobuf.Timestamp
  field :schema_title, 13, type: :string
  field :schema_version, 14, type: :string
  field :metadata, 15, type: Google.Protobuf.Struct
  field :description, 16, type: :string
end
