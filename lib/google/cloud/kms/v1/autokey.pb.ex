defmodule Google.Cloud.Kms.V1.CreateKeyHandleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :key_handle_id, 2, type: :string, json_name: "keyHandleId", deprecated: false

  field :key_handle, 3,
    type: Google.Cloud.Kms.V1.KeyHandle,
    json_name: "keyHandle",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.GetKeyHandleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.KeyHandle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :kms_key, 3, type: :string, json_name: "kmsKey", deprecated: false

  field :resource_type_selector, 4,
    type: :string,
    json_name: "resourceTypeSelector",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.CreateKeyHandleMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Kms.V1.ListKeyHandlesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.ListKeyHandlesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key_handles, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.KeyHandle,
    json_name: "keyHandles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Kms.V1.Autokey.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.kms.v1.Autokey", protoc_gen_elixir_version: "0.14.1"

  rpc :CreateKeyHandle, Google.Cloud.Kms.V1.CreateKeyHandleRequest, Google.Longrunning.Operation

  rpc :GetKeyHandle, Google.Cloud.Kms.V1.GetKeyHandleRequest, Google.Cloud.Kms.V1.KeyHandle

  rpc :ListKeyHandles,
      Google.Cloud.Kms.V1.ListKeyHandlesRequest,
      Google.Cloud.Kms.V1.ListKeyHandlesResponse
end

defmodule Google.Cloud.Kms.V1.Autokey.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Kms.V1.Autokey.Service
end
