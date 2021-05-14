defmodule Google.Ads.Googleads.V4.Enums.UserListAccessStatusEnum.UserListAccessStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENABLED | :DISABLED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ENABLED, 2

  field :DISABLED, 3
end

defmodule Google.Ads.Googleads.V4.Enums.UserListAccessStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
