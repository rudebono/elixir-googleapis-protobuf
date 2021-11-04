defmodule Google.Ads.Googleads.V9.Enums.DisplayAdFormatSettingEnum.DisplayAdFormatSetting do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ALL_FORMATS | :NON_NATIVE | :NATIVE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ALL_FORMATS, 2
  field :NON_NATIVE, 3
  field :NATIVE, 4
end

defmodule Google.Ads.Googleads.V9.Enums.DisplayAdFormatSettingEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
