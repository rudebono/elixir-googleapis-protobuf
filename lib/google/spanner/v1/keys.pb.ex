defmodule Google.Spanner.V1.KeyRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_key_type: {atom, any},
          end_key_type: {atom, any}
        }

  defstruct [:start_key_type, :end_key_type]

  oneof :start_key_type, 0
  oneof :end_key_type, 1
  field :start_closed, 1, type: Google.Protobuf.ListValue, oneof: 0
  field :start_open, 2, type: Google.Protobuf.ListValue, oneof: 0
  field :end_closed, 3, type: Google.Protobuf.ListValue, oneof: 1
  field :end_open, 4, type: Google.Protobuf.ListValue, oneof: 1
end

defmodule Google.Spanner.V1.KeySet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keys: [Google.Protobuf.ListValue.t()],
          ranges: [Google.Spanner.V1.KeyRange.t()],
          all: boolean
        }

  defstruct [:keys, :ranges, :all]

  field :keys, 1, repeated: true, type: Google.Protobuf.ListValue
  field :ranges, 2, repeated: true, type: Google.Spanner.V1.KeyRange
  field :all, 3, type: :bool
end
