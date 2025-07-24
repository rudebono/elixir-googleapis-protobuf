defmodule Google.Cloud.Discoveryengine.V1.CreateIdentityMappingStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cmek_options, 0

  field :cmek_config_name, 5,
    type: :string,
    json_name: "cmekConfigName",
    oneof: 0,
    deprecated: false

  field :disable_cmek, 6, type: :bool, json_name: "disableCmek", oneof: 0
  field :parent, 1, type: :string, deprecated: false

  field :identity_mapping_store_id, 2,
    type: :string,
    json_name: "identityMappingStoreId",
    deprecated: false

  field :identity_mapping_store, 3,
    type: Google.Cloud.Discoveryengine.V1.IdentityMappingStore,
    json_name: "identityMappingStore",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.GetIdentityMappingStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteIdentityMappingStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ImportIdentityMappingsRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :identity_mapping_entries, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.IdentityMappingEntry,
    json_name: "identityMappingEntries"
end

defmodule Google.Cloud.Discoveryengine.V1.ImportIdentityMappingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1.ImportIdentityMappingsRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :identity_mapping_store, 1,
    type: :string,
    json_name: "identityMappingStore",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ImportIdentityMappingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeIdentityMappingsRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :identity_mapping_entries, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.IdentityMappingEntry,
    json_name: "identityMappingEntries"
end

defmodule Google.Cloud.Discoveryengine.V1.PurgeIdentityMappingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1.PurgeIdentityMappingsRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :identity_mapping_store, 1,
    type: :string,
    json_name: "identityMappingStore",
    deprecated: false

  field :filter, 3, type: :string
  field :force, 4, proto3_optional: true, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1.ListIdentityMappingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :identity_mapping_store, 1,
    type: :string,
    json_name: "identityMappingStore",
    deprecated: false

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ListIdentityMappingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :identity_mapping_entries, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.IdentityMappingEntry,
    json_name: "identityMappingEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ListIdentityMappingStoresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ListIdentityMappingStoresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :identity_mapping_stores, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.IdentityMappingStore,
    json_name: "identityMappingStores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.IdentityMappingEntryOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :success_count, 1, type: :int64, json_name: "successCount"
  field :failure_count, 2, type: :int64, json_name: "failureCount"
  field :total_count, 3, type: :int64, json_name: "totalCount"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteIdentityMappingStoreMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.IdentityMappingStoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.IdentityMappingStoreService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateIdentityMappingStore,
      Google.Cloud.Discoveryengine.V1.CreateIdentityMappingStoreRequest,
      Google.Cloud.Discoveryengine.V1.IdentityMappingStore

  rpc :GetIdentityMappingStore,
      Google.Cloud.Discoveryengine.V1.GetIdentityMappingStoreRequest,
      Google.Cloud.Discoveryengine.V1.IdentityMappingStore

  rpc :DeleteIdentityMappingStore,
      Google.Cloud.Discoveryengine.V1.DeleteIdentityMappingStoreRequest,
      Google.Longrunning.Operation

  rpc :ImportIdentityMappings,
      Google.Cloud.Discoveryengine.V1.ImportIdentityMappingsRequest,
      Google.Longrunning.Operation

  rpc :PurgeIdentityMappings,
      Google.Cloud.Discoveryengine.V1.PurgeIdentityMappingsRequest,
      Google.Longrunning.Operation

  rpc :ListIdentityMappings,
      Google.Cloud.Discoveryengine.V1.ListIdentityMappingsRequest,
      Google.Cloud.Discoveryengine.V1.ListIdentityMappingsResponse

  rpc :ListIdentityMappingStores,
      Google.Cloud.Discoveryengine.V1.ListIdentityMappingStoresRequest,
      Google.Cloud.Discoveryengine.V1.ListIdentityMappingStoresResponse
end

defmodule Google.Cloud.Discoveryengine.V1.IdentityMappingStoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.IdentityMappingStoreService.Service
end
