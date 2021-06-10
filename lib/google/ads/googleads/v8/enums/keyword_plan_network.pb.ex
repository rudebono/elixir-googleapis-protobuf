defmodule Google.Ads.Googleads.V8.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :GOOGLE_SEARCH | :GOOGLE_SEARCH_AND_PARTNERS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :GOOGLE_SEARCH, 2

  field :GOOGLE_SEARCH_AND_PARTNERS, 3
end

defmodule Google.Ads.Googleads.V8.Enums.KeywordPlanNetworkEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
