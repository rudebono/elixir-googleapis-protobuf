defmodule Google.Ads.Googleads.V8.Enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENABLED | :PENDING

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ENABLED, 2

  field :PENDING, 3
end

defmodule Google.Ads.Googleads.V8.Enums.MerchantCenterLinkStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
