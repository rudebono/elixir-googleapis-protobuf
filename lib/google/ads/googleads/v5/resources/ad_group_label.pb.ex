defmodule Google.Ads.Googleads.V5.Resources.AdGroupLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group: Google.Protobuf.StringValue.t() | nil,
          label: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :ad_group, :label]

  field :resource_name, 1, type: :string
  field :ad_group, 2, type: Google.Protobuf.StringValue
  field :label, 3, type: Google.Protobuf.StringValue
end
