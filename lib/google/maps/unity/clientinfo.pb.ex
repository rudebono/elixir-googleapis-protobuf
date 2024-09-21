defmodule Google.Maps.Unity.ClientInfo.Platform do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PLATFORM_UNSPECIFIED, 0
  field :EDITOR, 1
  field :MAC_OS, 2
  field :WINDOWS, 3
  field :LINUX, 4
  field :ANDROID, 5
  field :IOS, 6
  field :WEB_GL, 7
end

defmodule Google.Maps.Unity.ClientInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :application_version, 2, type: :string, json_name: "applicationVersion"
  field :platform, 3, type: Google.Maps.Unity.ClientInfo.Platform, enum: true
  field :operating_system, 4, type: :string, json_name: "operatingSystem"
  field :api_client, 5, type: :string, json_name: "apiClient"
  field :device_model, 6, type: :string, json_name: "deviceModel"
  field :language_code, 7, type: :string, json_name: "languageCode"
  field :operating_system_build, 8, type: :string, json_name: "operatingSystemBuild"
end