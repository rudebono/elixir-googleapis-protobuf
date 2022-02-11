defmodule Google.Ads.Googleads.V10.Resources.CustomerCustomizer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          customizer_attribute: String.t(),
          status:
            Google.Ads.Googleads.V10.Enums.CustomizerValueStatusEnum.CustomizerValueStatus.t(),
          value: Google.Ads.Googleads.V10.Common.CustomizerValue.t() | nil
        }

  defstruct resource_name: "",
            customizer_attribute: "",
            status: :UNSPECIFIED,
            value: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :customizer_attribute, 2,
    type: :string,
    json_name: "customizerAttribute",
    deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V10.Enums.CustomizerValueStatusEnum.CustomizerValueStatus,
    enum: true,
    deprecated: false

  field :value, 4, type: Google.Ads.Googleads.V10.Common.CustomizerValue, deprecated: false
end
