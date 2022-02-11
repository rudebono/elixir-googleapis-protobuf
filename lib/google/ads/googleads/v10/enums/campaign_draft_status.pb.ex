defmodule Google.Ads.Googleads.V10.Enums.CampaignDraftStatusEnum.CampaignDraftStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PROPOSED
          | :REMOVED
          | :PROMOTING
          | :PROMOTED
          | :PROMOTE_FAILED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PROPOSED, 2
  field :REMOVED, 3
  field :PROMOTING, 5
  field :PROMOTED, 4
  field :PROMOTE_FAILED, 6
end
defmodule Google.Ads.Googleads.V10.Enums.CampaignDraftStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
