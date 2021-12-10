defmodule Google.Ads.Googleads.V7.Resources.CombinedAudience do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          status:
            Google.Ads.Googleads.V7.Enums.CombinedAudienceStatusEnum.CombinedAudienceStatus.t(),
          name: String.t(),
          description: String.t()
        }

  defstruct resource_name: "",
            id: 0,
            status: :UNSPECIFIED,
            name: "",
            description: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V7.Enums.CombinedAudienceStatusEnum.CombinedAudienceStatus,
    enum: true,
    deprecated: false

  field :name, 4, type: :string, deprecated: false
  field :description, 5, type: :string, deprecated: false
end
