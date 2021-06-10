defmodule Google.Ads.Googleads.V8.Resources.CombinedAudience do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          status:
            Google.Ads.Googleads.V8.Enums.CombinedAudienceStatusEnum.CombinedAudienceStatus.t(),
          name: String.t(),
          description: String.t()
        }

  defstruct [:resource_name, :id, :status, :name, :description]

  field :resource_name, 1, type: :string
  field :id, 2, type: :int64

  field :status, 3,
    type: Google.Ads.Googleads.V8.Enums.CombinedAudienceStatusEnum.CombinedAudienceStatus,
    enum: true

  field :name, 4, type: :string
  field :description, 5, type: :string
end
