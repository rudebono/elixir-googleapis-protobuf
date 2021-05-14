defmodule Google.Ads.Googleads.V4.Resources.AdParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_criterion: Google.Protobuf.StringValue.t() | nil,
          parameter_index: Google.Protobuf.Int64Value.t() | nil,
          insertion_text: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :ad_group_criterion, :parameter_index, :insertion_text]

  field :resource_name, 1, type: :string
  field :ad_group_criterion, 2, type: Google.Protobuf.StringValue
  field :parameter_index, 3, type: Google.Protobuf.Int64Value
  field :insertion_text, 4, type: Google.Protobuf.StringValue
end
