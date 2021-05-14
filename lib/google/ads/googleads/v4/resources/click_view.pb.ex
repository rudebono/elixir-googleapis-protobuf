defmodule Google.Ads.Googleads.V4.Resources.ClickView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          gclid: Google.Protobuf.StringValue.t() | nil,
          area_of_interest: Google.Ads.Googleads.V4.Common.ClickLocation.t() | nil,
          location_of_presence: Google.Ads.Googleads.V4.Common.ClickLocation.t() | nil,
          page_number: Google.Protobuf.Int64Value.t() | nil,
          ad_group_ad: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :resource_name,
    :gclid,
    :area_of_interest,
    :location_of_presence,
    :page_number,
    :ad_group_ad
  ]

  field :resource_name, 1, type: :string
  field :gclid, 2, type: Google.Protobuf.StringValue
  field :area_of_interest, 3, type: Google.Ads.Googleads.V4.Common.ClickLocation
  field :location_of_presence, 4, type: Google.Ads.Googleads.V4.Common.ClickLocation
  field :page_number, 5, type: Google.Protobuf.Int64Value
  field :ad_group_ad, 7, type: Google.Protobuf.StringValue
end
