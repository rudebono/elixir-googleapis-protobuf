defmodule Google.Ads.Googleads.V10.Resources.AssetGroupSignal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset_group: String.t(),
          audience: Google.Ads.Googleads.V10.Common.AudienceInfo.t() | nil
        }

  defstruct resource_name: "",
            asset_group: "",
            audience: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false
  field :audience, 3, type: Google.Ads.Googleads.V10.Common.AudienceInfo, deprecated: false
end
