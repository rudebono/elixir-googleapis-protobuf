defmodule Google.Ads.Googleads.V10.Enums.CustomerStatusEnum.CustomerStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENABLED | :CANCELED | :SUSPENDED | :CLOSED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :CANCELED, 3
  field :SUSPENDED, 4
  field :CLOSED, 5
end
defmodule Google.Ads.Googleads.V10.Enums.CustomerStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
