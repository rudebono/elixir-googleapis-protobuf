defmodule Google.Ads.Googleads.V10.Resources.CampaignGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          status: Google.Ads.Googleads.V10.Enums.CampaignGroupStatusEnum.CampaignGroupStatus.t()
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 3, type: :int64, deprecated: false
  field :name, 4, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V10.Enums.CampaignGroupStatusEnum.CampaignGroupStatus,
    enum: true
end
