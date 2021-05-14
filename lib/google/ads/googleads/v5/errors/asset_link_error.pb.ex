defmodule Google.Ads.Googleads.V5.Errors.AssetLinkErrorEnum.AssetLinkError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PINNING_UNSUPPORTED
          | :UNSUPPORTED_FIELD_TYPE
          | :FIELD_TYPE_INCOMPATIBLE_WITH_ASSET_TYPE
          | :FIELD_TYPE_INCOMPATIBLE_WITH_CAMPAIGN_TYPE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :PINNING_UNSUPPORTED, 2

  field :UNSUPPORTED_FIELD_TYPE, 3

  field :FIELD_TYPE_INCOMPATIBLE_WITH_ASSET_TYPE, 4

  field :FIELD_TYPE_INCOMPATIBLE_WITH_CAMPAIGN_TYPE, 5
end

defmodule Google.Ads.Googleads.V5.Errors.AssetLinkErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
