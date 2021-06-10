defmodule Google.Ads.Googleads.V8.Enums.ExtensionSettingDeviceEnum.ExtensionSettingDevice do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :MOBILE | :DESKTOP

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :MOBILE, 2

  field :DESKTOP, 3
end

defmodule Google.Ads.Googleads.V8.Enums.ExtensionSettingDeviceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
