defmodule Google.Ads.Googleads.V8.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :HTML | :AMP

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :HTML, 2
  field :AMP, 3
end

defmodule Google.Ads.Googleads.V8.Enums.TrackingCodePageFormatEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
