defmodule Google.Ads.Googleads.V7.Enums.FeedMappingStatusEnum.FeedMappingStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENABLED | :REMOVED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ENABLED, 2

  field :REMOVED, 3
end

defmodule Google.Ads.Googleads.V7.Enums.FeedMappingStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
