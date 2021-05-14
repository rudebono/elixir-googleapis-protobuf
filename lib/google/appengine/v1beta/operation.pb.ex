defmodule Google.Appengine.V1beta.OperationMetadataV1Beta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method_metadata: {atom, any},
          method: String.t(),
          insert_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          user: String.t(),
          target: String.t(),
          ephemeral_message: String.t(),
          warning: [String.t()]
        }

  defstruct [
    :method_metadata,
    :method,
    :insert_time,
    :end_time,
    :user,
    :target,
    :ephemeral_message,
    :warning
  ]

  oneof :method_metadata, 0
  field :method, 1, type: :string
  field :insert_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
  field :user, 4, type: :string
  field :target, 5, type: :string
  field :ephemeral_message, 6, type: :string
  field :warning, 7, repeated: true, type: :string

  field :create_version_metadata, 8,
    type: Google.Appengine.V1beta.CreateVersionMetadataV1Beta,
    oneof: 0
end

defmodule Google.Appengine.V1beta.CreateVersionMetadataV1Beta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cloud_build_id: String.t()
        }

  defstruct [:cloud_build_id]

  field :cloud_build_id, 1, type: :string
end
