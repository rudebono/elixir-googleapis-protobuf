defmodule Google.Maps.Unity.ClientInfo.Platform do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PLATFORM_UNSPECIFIED
          | :EDITOR
          | :MAC_OS
          | :WINDOWS
          | :LINUX
          | :ANDROID
          | :IOS
          | :WEB_GL

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application_id: String.t(),
          application_version: String.t(),
          platform: Google.Maps.Unity.ClientInfo.Platform.t(),
          operating_system: String.t(),
          api_client: String.t(),
          device_model: String.t(),
          language_code: String.t(),
          operating_system_build: String.t()
        }

  defstruct [
    :application_id,
    :application_version,
    :platform,
    :operating_system,
    :api_client,
    :device_model,
    :language_code,
    :operating_system_build
  ]

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :application_version, 2, type: :string, json_name: "applicationVersion"
  field :platform, 3, type: Google.Maps.Unity.ClientInfo.Platform, enum: true
  field :operating_system, 4, type: :string, json_name: "operatingSystem"
  field :api_client, 5, type: :string, json_name: "apiClient"
  field :device_model, 6, type: :string, json_name: "deviceModel"
  field :language_code, 7, type: :string, json_name: "languageCode"
  field :operating_system_build, 8, type: :string, json_name: "operatingSystemBuild"

  def transform_module(), do: nil
end
