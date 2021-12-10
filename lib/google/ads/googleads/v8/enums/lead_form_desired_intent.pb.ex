defmodule Google.Ads.Googleads.V8.Enums.LeadFormDesiredIntentEnum.LeadFormDesiredIntent do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :LOW_INTENT | :HIGH_INTENT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :LOW_INTENT, 2
  field :HIGH_INTENT, 3
end
defmodule Google.Ads.Googleads.V8.Enums.LeadFormDesiredIntentEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
