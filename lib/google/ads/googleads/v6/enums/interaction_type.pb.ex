defmodule Google.Ads.Googleads.V6.Enums.InteractionTypeEnum.InteractionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CALLS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :CALLS, 8000
end

defmodule Google.Ads.Googleads.V6.Enums.InteractionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
