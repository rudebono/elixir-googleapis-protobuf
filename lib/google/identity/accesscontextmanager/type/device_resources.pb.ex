defmodule Google.Identity.Accesscontextmanager.Type.DeviceEncryptionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ENCRYPTION_UNSPECIFIED, 0
  field :ENCRYPTION_UNSUPPORTED, 1
  field :UNENCRYPTED, 2
  field :ENCRYPTED, 3
end

defmodule Google.Identity.Accesscontextmanager.Type.OsType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OS_UNSPECIFIED, 0
  field :DESKTOP_MAC, 1
  field :DESKTOP_WINDOWS, 2
  field :DESKTOP_LINUX, 3
  field :DESKTOP_CHROME_OS, 6
  field :ANDROID, 4
  field :IOS, 5
end

defmodule Google.Identity.Accesscontextmanager.Type.DeviceManagementLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MANAGEMENT_UNSPECIFIED, 0
  field :NONE, 1
  field :BASIC, 2
  field :COMPLETE, 3
end
