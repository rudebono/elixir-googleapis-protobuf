defmodule Google.Ads.Googleads.V4.Resources.CampaignBidModifier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          campaign: Google.Protobuf.StringValue.t() | nil,
          criterion_id: Google.Protobuf.Int64Value.t() | nil,
          bid_modifier: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [:criterion, :resource_name, :campaign, :criterion_id, :bid_modifier]

  oneof :criterion, 0
  field :resource_name, 1, type: :string
  field :campaign, 2, type: Google.Protobuf.StringValue
  field :criterion_id, 3, type: Google.Protobuf.Int64Value
  field :bid_modifier, 4, type: Google.Protobuf.DoubleValue
  field :interaction_type, 5, type: Google.Ads.Googleads.V4.Common.InteractionTypeInfo, oneof: 0
end
