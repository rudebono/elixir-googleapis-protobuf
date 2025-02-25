defmodule Google.Api.Apikeys.V2.CreateKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :key, 2, type: Google.Api.Apikeys.V2.Key, deprecated: false
  field :key_id, 3, type: :string, json_name: "keyId"
end

defmodule Google.Api.Apikeys.V2.ListKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :show_deleted, 6, type: :bool, json_name: "showDeleted", deprecated: false
end

defmodule Google.Api.Apikeys.V2.ListKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :keys, 1, repeated: true, type: Google.Api.Apikeys.V2.Key
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Api.Apikeys.V2.GetKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Api.Apikeys.V2.GetKeyStringRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Api.Apikeys.V2.GetKeyStringResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key_string, 1, type: :string, json_name: "keyString"
end

defmodule Google.Api.Apikeys.V2.UpdateKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: Google.Api.Apikeys.V2.Key, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Api.Apikeys.V2.DeleteKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Api.Apikeys.V2.UndeleteKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Api.Apikeys.V2.LookupKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key_string, 1, type: :string, json_name: "keyString", deprecated: false
end

defmodule Google.Api.Apikeys.V2.LookupKeyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Api.Apikeys.V2.ApiKeys.Service do
  @moduledoc false

  use GRPC.Service, name: "google.api.apikeys.v2.ApiKeys", protoc_gen_elixir_version: "0.14.1"

  rpc :CreateKey, Google.Api.Apikeys.V2.CreateKeyRequest, Google.Longrunning.Operation

  rpc :ListKeys, Google.Api.Apikeys.V2.ListKeysRequest, Google.Api.Apikeys.V2.ListKeysResponse

  rpc :GetKey, Google.Api.Apikeys.V2.GetKeyRequest, Google.Api.Apikeys.V2.Key

  rpc :GetKeyString,
      Google.Api.Apikeys.V2.GetKeyStringRequest,
      Google.Api.Apikeys.V2.GetKeyStringResponse

  rpc :UpdateKey, Google.Api.Apikeys.V2.UpdateKeyRequest, Google.Longrunning.Operation

  rpc :DeleteKey, Google.Api.Apikeys.V2.DeleteKeyRequest, Google.Longrunning.Operation

  rpc :UndeleteKey, Google.Api.Apikeys.V2.UndeleteKeyRequest, Google.Longrunning.Operation

  rpc :LookupKey, Google.Api.Apikeys.V2.LookupKeyRequest, Google.Api.Apikeys.V2.LookupKeyResponse
end

defmodule Google.Api.Apikeys.V2.ApiKeys.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Api.Apikeys.V2.ApiKeys.Service
end
