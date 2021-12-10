defmodule Google.Ads.Googleads.V8.Enums.ConversionActionStatusEnum.ConversionActionStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENABLED | :REMOVED | :HIDDEN

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :REMOVED, 3
  field :HIDDEN, 4
end
defmodule Google.Ads.Googleads.V8.Enums.ConversionActionStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
