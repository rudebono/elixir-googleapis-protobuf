defmodule Google.Ads.Googleads.V9.Enums.FeedItemValidationStatusEnum.FeedItemValidationStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PENDING | :INVALID | :VALID

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PENDING, 2
  field :INVALID, 3
  field :VALID, 4
end
defmodule Google.Ads.Googleads.V9.Enums.FeedItemValidationStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
