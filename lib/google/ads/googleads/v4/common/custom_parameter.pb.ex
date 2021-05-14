defmodule Google.Ads.Googleads.V4.Common.CustomParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: Google.Protobuf.StringValue.t() | nil,
          value: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: Google.Protobuf.StringValue
  field :value, 2, type: Google.Protobuf.StringValue
end
