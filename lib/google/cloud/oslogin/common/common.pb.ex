defmodule Google.Cloud.Oslogin.Common.OperatingSystemType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :OPERATING_SYSTEM_TYPE_UNSPECIFIED | :LINUX | :WINDOWS

  field :OPERATING_SYSTEM_TYPE_UNSPECIFIED, 0
  field :LINUX, 1
  field :WINDOWS, 2
end

defmodule Google.Cloud.Oslogin.Common.PosixAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          primary: boolean,
          username: String.t(),
          uid: integer,
          gid: integer,
          home_directory: String.t(),
          shell: String.t(),
          gecos: String.t(),
          system_id: String.t(),
          account_id: String.t(),
          operating_system_type: Google.Cloud.Oslogin.Common.OperatingSystemType.t(),
          name: String.t()
        }

  defstruct [
    :primary,
    :username,
    :uid,
    :gid,
    :home_directory,
    :shell,
    :gecos,
    :system_id,
    :account_id,
    :operating_system_type,
    :name
  ]

  field :primary, 1, type: :bool
  field :username, 2, type: :string
  field :uid, 3, type: :int64
  field :gid, 4, type: :int64
  field :home_directory, 5, type: :string, json_name: "homeDirectory"
  field :shell, 6, type: :string
  field :gecos, 7, type: :string
  field :system_id, 8, type: :string, json_name: "systemId"
  field :account_id, 9, type: :string, json_name: "accountId"

  field :operating_system_type, 10,
    type: Google.Cloud.Oslogin.Common.OperatingSystemType,
    enum: true,
    json_name: "operatingSystemType"

  field :name, 11, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Oslogin.Common.SshPublicKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          expiration_time_usec: integer,
          fingerprint: String.t(),
          name: String.t()
        }

  defstruct [:key, :expiration_time_usec, :fingerprint, :name]

  field :key, 1, type: :string
  field :expiration_time_usec, 2, type: :int64, json_name: "expirationTimeUsec"
  field :fingerprint, 3, type: :string
  field :name, 4, type: :string

  def transform_module(), do: nil
end
