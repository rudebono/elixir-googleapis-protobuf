defmodule Google.Cloud.Baremetalsolution.V2.SSHKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :public_key, 2, type: :string, json_name: "publicKey"
end

defmodule Google.Cloud.Baremetalsolution.V2.ListSSHKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Baremetalsolution.V2.ListSSHKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ssh_keys, 1,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.SSHKey,
    json_name: "sshKeys"

  field :next_page_token, 90, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Baremetalsolution.V2.CreateSSHKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :ssh_key, 2,
    type: Google.Cloud.Baremetalsolution.V2.SSHKey,
    json_name: "sshKey",
    deprecated: false

  field :ssh_key_id, 3, type: :string, json_name: "sshKeyId", deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.DeleteSSHKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end