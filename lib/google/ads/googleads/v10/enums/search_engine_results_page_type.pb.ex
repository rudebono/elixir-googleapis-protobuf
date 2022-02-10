defmodule Google.Ads.Googleads.V10.Enums.SearchEngineResultsPageTypeEnum.SearchEngineResultsPageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADS_ONLY | :ORGANIC_ONLY | :ADS_AND_ORGANIC

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADS_ONLY, 2
  field :ORGANIC_ONLY, 3
  field :ADS_AND_ORGANIC, 4
end
defmodule Google.Ads.Googleads.V10.Enums.SearchEngineResultsPageTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
