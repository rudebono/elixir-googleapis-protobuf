defmodule Google.Ads.Googleads.V4.Enums.UserListClosingReasonEnum.UserListClosingReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :UNUSED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :UNUSED, 2
end

defmodule Google.Ads.Googleads.V4.Enums.UserListClosingReasonEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
