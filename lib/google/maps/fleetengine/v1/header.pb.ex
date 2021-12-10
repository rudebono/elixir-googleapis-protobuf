defmodule Maps.Fleetengine.V1.RequestHeader do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t(),
          region_code: String.t(),
          sdk_version: String.t(),
          os_version: String.t(),
          device_model: String.t()
        }

  defstruct language_code: "",
            region_code: "",
            sdk_version: "",
            os_version: "",
            device_model: ""

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :region_code, 2, type: :string, json_name: "regionCode", deprecated: false
  field :sdk_version, 3, type: :string, json_name: "sdkVersion"
  field :os_version, 4, type: :string, json_name: "osVersion"
  field :device_model, 5, type: :string, json_name: "deviceModel"
end
