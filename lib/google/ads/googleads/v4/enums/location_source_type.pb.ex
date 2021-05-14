defmodule Google.Ads.Googleads.V4.Enums.LocationSourceTypeEnum.LocationSourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :GOOGLE_MY_BUSINESS | :AFFILIATE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :GOOGLE_MY_BUSINESS, 2

  field :AFFILIATE, 3
end

defmodule Google.Ads.Googleads.V4.Enums.LocationSourceTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
