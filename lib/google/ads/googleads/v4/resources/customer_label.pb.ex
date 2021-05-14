defmodule Google.Ads.Googleads.V4.Resources.CustomerLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          customer: Google.Protobuf.StringValue.t() | nil,
          label: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :customer, :label]

  field :resource_name, 1, type: :string
  field :customer, 2, type: Google.Protobuf.StringValue
  field :label, 3, type: Google.Protobuf.StringValue
end
