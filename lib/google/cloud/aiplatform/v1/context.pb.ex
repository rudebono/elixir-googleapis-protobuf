defmodule Google.Cloud.Aiplatform.V1.Context.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1.Context do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          parent_contexts: [String.t()]
        }

  defstruct [:name, :display_name, :etag, :labels, :create_time, :update_time, :parent_contexts]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :etag, 8, type: :string

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Context.LabelsEntry,
    map: true

  field :create_time, 10, type: Google.Protobuf.Timestamp
  field :update_time, 11, type: Google.Protobuf.Timestamp
  field :parent_contexts, 12, repeated: true, type: :string
end
