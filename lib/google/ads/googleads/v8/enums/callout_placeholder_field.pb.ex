defmodule Google.Ads.Googleads.V8.Enums.CalloutPlaceholderFieldEnum.CalloutPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CALLOUT_TEXT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CALLOUT_TEXT, 2
end
defmodule Google.Ads.Googleads.V8.Enums.CalloutPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
