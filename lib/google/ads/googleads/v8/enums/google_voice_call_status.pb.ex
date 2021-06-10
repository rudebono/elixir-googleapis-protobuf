defmodule Google.Ads.Googleads.V8.Enums.GoogleVoiceCallStatusEnum.GoogleVoiceCallStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :MISSED | :RECEIVED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :MISSED, 2

  field :RECEIVED, 3
end

defmodule Google.Ads.Googleads.V8.Enums.GoogleVoiceCallStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
