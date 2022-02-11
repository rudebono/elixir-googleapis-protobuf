defmodule Google.Ads.Googleads.V10.Resources.AssetGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          campaign: String.t(),
          name: String.t(),
          final_urls: [String.t()],
          final_mobile_urls: [String.t()],
          status: Google.Ads.Googleads.V10.Enums.AssetGroupStatusEnum.AssetGroupStatus.t(),
          path1: String.t(),
          path2: String.t()
        }

  defstruct resource_name: "",
            id: 0,
            campaign: "",
            name: "",
            final_urls: [],
            final_mobile_urls: [],
            status: :UNSPECIFIED,
            path1: "",
            path2: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 9, type: :int64, deprecated: false
  field :campaign, 2, type: :string, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :final_urls, 4, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 5, repeated: true, type: :string, json_name: "finalMobileUrls"

  field :status, 6,
    type: Google.Ads.Googleads.V10.Enums.AssetGroupStatusEnum.AssetGroupStatus,
    enum: true

  field :path1, 7, type: :string
  field :path2, 8, type: :string
end
