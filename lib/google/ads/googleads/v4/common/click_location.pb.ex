defmodule Google.Ads.Googleads.V4.Common.ClickLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          city: Google.Protobuf.StringValue.t() | nil,
          country: Google.Protobuf.StringValue.t() | nil,
          metro: Google.Protobuf.StringValue.t() | nil,
          most_specific: Google.Protobuf.StringValue.t() | nil,
          region: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:city, :country, :metro, :most_specific, :region]

  field :city, 1, type: Google.Protobuf.StringValue
  field :country, 2, type: Google.Protobuf.StringValue
  field :metro, 3, type: Google.Protobuf.StringValue
  field :most_specific, 4, type: Google.Protobuf.StringValue
  field :region, 5, type: Google.Protobuf.StringValue
end
