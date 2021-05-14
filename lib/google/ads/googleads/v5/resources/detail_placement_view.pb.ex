defmodule Google.Ads.Googleads.V5.Resources.DetailPlacementView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          placement: Google.Protobuf.StringValue.t() | nil,
          display_name: Google.Protobuf.StringValue.t() | nil,
          group_placement_target_url: Google.Protobuf.StringValue.t() | nil,
          target_url: Google.Protobuf.StringValue.t() | nil,
          placement_type: Google.Ads.Googleads.V5.Enums.PlacementTypeEnum.PlacementType.t()
        }

  defstruct [
    :resource_name,
    :placement,
    :display_name,
    :group_placement_target_url,
    :target_url,
    :placement_type
  ]

  field :resource_name, 1, type: :string
  field :placement, 2, type: Google.Protobuf.StringValue
  field :display_name, 3, type: Google.Protobuf.StringValue
  field :group_placement_target_url, 4, type: Google.Protobuf.StringValue
  field :target_url, 5, type: Google.Protobuf.StringValue

  field :placement_type, 6,
    type: Google.Ads.Googleads.V5.Enums.PlacementTypeEnum.PlacementType,
    enum: true
end
