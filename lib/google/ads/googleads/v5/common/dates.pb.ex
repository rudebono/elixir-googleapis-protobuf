defmodule Google.Ads.Googleads.V5.Common.DateRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: Google.Protobuf.StringValue.t() | nil,
          end_date: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:start_date, :end_date]

  field :start_date, 1, type: Google.Protobuf.StringValue
  field :end_date, 2, type: Google.Protobuf.StringValue
end
