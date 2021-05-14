defmodule Google.Ads.Googleads.V6.Errors.KeywordPlanIdeaErrorEnum.KeywordPlanIdeaError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :URL_CRAWL_ERROR | :INVALID_VALUE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :URL_CRAWL_ERROR, 2

  field :INVALID_VALUE, 3
end

defmodule Google.Ads.Googleads.V6.Errors.KeywordPlanIdeaErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
