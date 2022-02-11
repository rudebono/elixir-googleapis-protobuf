defmodule Google.Ads.Googleads.V10.Enums.AdCustomizerPlaceholderFieldEnum.AdCustomizerPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :INTEGER | :PRICE | :DATE | :STRING

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INTEGER, 2
  field :PRICE, 3
  field :DATE, 4
  field :STRING, 5
end
defmodule Google.Ads.Googleads.V10.Enums.AdCustomizerPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
