defmodule Google.Ads.Googleads.V5.Resources.UserLocationView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          country_criterion_id: Google.Protobuf.Int64Value.t() | nil,
          targeting_location: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:resource_name, :country_criterion_id, :targeting_location]

  field :resource_name, 1, type: :string
  field :country_criterion_id, 2, type: Google.Protobuf.Int64Value
  field :targeting_location, 3, type: Google.Protobuf.BoolValue
end
