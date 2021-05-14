defmodule Google.Ads.Googleads.V5.Common.Money do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          currency_code: Google.Protobuf.StringValue.t() | nil,
          amount_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:currency_code, :amount_micros]

  field :currency_code, 1, type: Google.Protobuf.StringValue
  field :amount_micros, 2, type: Google.Protobuf.Int64Value
end
