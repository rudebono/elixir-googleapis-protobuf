defmodule Google.Ads.Googleads.V5.Enums.AdNetworkTypeEnum.AdNetworkType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :SEARCH
          | :SEARCH_PARTNERS
          | :CONTENT
          | :YOUTUBE_SEARCH
          | :YOUTUBE_WATCH
          | :MIXED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :SEARCH, 2

  field :SEARCH_PARTNERS, 3

  field :CONTENT, 4

  field :YOUTUBE_SEARCH, 5

  field :YOUTUBE_WATCH, 6

  field :MIXED, 7
end

defmodule Google.Ads.Googleads.V5.Enums.AdNetworkTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
