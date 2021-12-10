defmodule Google.Ads.Googleads.V9.Resources.CustomerConversionGoal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          category:
            Google.Ads.Googleads.V9.Enums.ConversionActionCategoryEnum.ConversionActionCategory.t(),
          origin: Google.Ads.Googleads.V9.Enums.ConversionOriginEnum.ConversionOrigin.t(),
          biddable: boolean
        }

  defstruct resource_name: "",
            category: :UNSPECIFIED,
            origin: :UNSPECIFIED,
            biddable: false

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :category, 2,
    type: Google.Ads.Googleads.V9.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :origin, 3,
    type: Google.Ads.Googleads.V9.Enums.ConversionOriginEnum.ConversionOrigin,
    enum: true

  field :biddable, 4, type: :bool
end
