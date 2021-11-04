defmodule Google.Identity.Accesscontextmanager.Type.DeviceEncryptionStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :ENCRYPTION_UNSPECIFIED | :ENCRYPTION_UNSUPPORTED | :UNENCRYPTED | :ENCRYPTED

  field :ENCRYPTION_UNSPECIFIED, 0
  field :ENCRYPTION_UNSUPPORTED, 1
  field :UNENCRYPTED, 2
  field :ENCRYPTED, 3
end

defmodule Google.Identity.Accesscontextmanager.Type.OsType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OS_UNSPECIFIED
          | :DESKTOP_MAC
          | :DESKTOP_WINDOWS
          | :DESKTOP_LINUX
          | :DESKTOP_CHROME_OS
          | :ANDROID
          | :IOS

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MANAGEMENT_UNSPECIFIED | :NONE | :BASIC | :COMPLETE

  field :MANAGEMENT_UNSPECIFIED, 0
  field :NONE, 1
  field :BASIC, 2
  field :COMPLETE, 3
end
