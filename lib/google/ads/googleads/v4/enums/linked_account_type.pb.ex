defmodule Google.Ads.Googleads.V4.Enums.LinkedAccountTypeEnum.LinkedAccountType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :THIRD_PARTY_APP_ANALYTICS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :THIRD_PARTY_APP_ANALYTICS, 2
end

defmodule Google.Ads.Googleads.V4.Enums.LinkedAccountTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
