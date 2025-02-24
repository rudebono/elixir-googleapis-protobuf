defmodule Google.Cloud.Oslogin.Common.OperatingSystemType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OPERATING_SYSTEM_TYPE_UNSPECIFIED, 0
  field :LINUX, 1
  field :WINDOWS, 2
end

defmodule Google.Cloud.Oslogin.Common.PosixAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :primary, 1, type: :bool
  field :username, 2, type: :string
  field :uid, 3, type: :int64
  field :gid, 4, type: :int64
  field :home_directory, 5, type: :string, json_name: "homeDirectory"
  field :shell, 6, type: :string
  field :gecos, 7, type: :string
  field :system_id, 8, type: :string, json_name: "systemId"
  field :account_id, 9, type: :string, json_name: "accountId", deprecated: false

  field :operating_system_type, 10,
    type: Google.Cloud.Oslogin.Common.OperatingSystemType,
    json_name: "operatingSystemType",
    enum: true

  field :name, 11, type: :string, deprecated: false
end

defmodule Google.Cloud.Oslogin.Common.SshPublicKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :expiration_time_usec, 2, type: :int64, json_name: "expirationTimeUsec"
  field :fingerprint, 3, type: :string, deprecated: false
  field :name, 4, type: :string, deprecated: false
end
