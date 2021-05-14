defmodule Google.Cloud.Datacatalog.V1.SystemTimestamps do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:create_time, :update_time, :expire_time]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :update_time, 2, type: Google.Protobuf.Timestamp
  field :expire_time, 3, type: Google.Protobuf.Timestamp
end
