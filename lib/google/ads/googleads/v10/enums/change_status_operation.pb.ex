defmodule Google.Ads.Googleads.V10.Enums.ChangeStatusOperationEnum.ChangeStatusOperation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADDED | :CHANGED | :REMOVED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADDED, 2
  field :CHANGED, 3
  field :REMOVED, 4
end
defmodule Google.Ads.Googleads.V10.Enums.ChangeStatusOperationEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
