defmodule Google.Ads.Googleads.V9.Resources.CampaignCustomizer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: String.t(),
          customizer_attribute: String.t(),
          status:
            Google.Ads.Googleads.V9.Enums.CustomizerValueStatusEnum.CustomizerValueStatus.t(),
          value: Google.Ads.Googleads.V9.Common.CustomizerValue.t() | nil
        }

  defstruct resource_name: "",
            campaign: "",
            customizer_attribute: "",
            status: :UNSPECIFIED,
            value: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: :string, deprecated: false

  field :customizer_attribute, 3,
    type: :string,
    json_name: "customizerAttribute",
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V9.Enums.CustomizerValueStatusEnum.CustomizerValueStatus,
    enum: true,
    deprecated: false

  field :value, 5, type: Google.Ads.Googleads.V9.Common.CustomizerValue, deprecated: false
end
