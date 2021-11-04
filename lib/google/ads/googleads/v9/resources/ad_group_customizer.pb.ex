defmodule Google.Ads.Googleads.V9.Resources.AdGroupCustomizer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group: String.t(),
          customizer_attribute: String.t(),
          status:
            Google.Ads.Googleads.V9.Enums.CustomizerValueStatusEnum.CustomizerValueStatus.t(),
          value: Google.Ads.Googleads.V9.Common.CustomizerValue.t() | nil
        }

  defstruct [:resource_name, :ad_group, :customizer_attribute, :status, :value]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :ad_group, 2, type: :string, json_name: "adGroup"
  field :customizer_attribute, 3, type: :string, json_name: "customizerAttribute"

  field :status, 4,
    type: Google.Ads.Googleads.V9.Enums.CustomizerValueStatusEnum.CustomizerValueStatus,
    enum: true

  field :value, 5, type: Google.Ads.Googleads.V9.Common.CustomizerValue

  def transform_module(), do: nil
end
