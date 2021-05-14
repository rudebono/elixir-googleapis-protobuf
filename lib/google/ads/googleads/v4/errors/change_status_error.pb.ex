defmodule Google.Ads.Googleads.V4.Errors.ChangeStatusErrorEnum.ChangeStatusError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :START_DATE_TOO_OLD

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :START_DATE_TOO_OLD, 3
end

defmodule Google.Ads.Googleads.V4.Errors.ChangeStatusErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
