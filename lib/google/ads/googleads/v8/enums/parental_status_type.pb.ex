defmodule Google.Ads.Googleads.V8.Enums.ParentalStatusTypeEnum.ParentalStatusType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PARENT | :NOT_A_PARENT | :UNDETERMINED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PARENT, 300
  field :NOT_A_PARENT, 301
  field :UNDETERMINED, 302
end
defmodule Google.Ads.Googleads.V8.Enums.ParentalStatusTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
