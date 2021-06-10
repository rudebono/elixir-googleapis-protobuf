defmodule Google.Ads.Googleads.V8.Enums.AccessReasonEnum.AccessReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :OWNED
          | :SHARED
          | :LICENSED
          | :SUBSCRIBED
          | :AFFILIATED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :OWNED, 2

  field :SHARED, 3

  field :LICENSED, 4

  field :SUBSCRIBED, 5

  field :AFFILIATED, 6
end

defmodule Google.Ads.Googleads.V8.Enums.AccessReasonEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
