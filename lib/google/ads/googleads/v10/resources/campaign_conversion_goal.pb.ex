defmodule Google.Ads.Googleads.V10.Resources.CampaignConversionGoal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          category:
            Google.Ads.Googleads.V10.Enums.ConversionActionCategoryEnum.ConversionActionCategory.t(),
          origin: Google.Ads.Googleads.V10.Enums.ConversionOriginEnum.ConversionOrigin.t(),
          biddable: boolean
        }

  defstruct resource_name: "",
            campaign: "",
            category: :UNSPECIFIED,
            origin: :UNSPECIFIED,
            biddable: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false

  field :category, 3,
    type: Google.Ads.Googleads.V10.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :origin, 4,
    type: Google.Ads.Googleads.V10.Enums.ConversionOriginEnum.ConversionOrigin,
    enum: true

  field :biddable, 5, type: :bool
end
