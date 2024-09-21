defmodule Google.Cloud.Discoveryengine.V1.CreateDataStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_store, 2,
    type: Google.Cloud.Discoveryengine.V1.DataStore,
    json_name: "dataStore",
    deprecated: false

  field :data_store_id, 3, type: :string, json_name: "dataStoreId", deprecated: false
  field :create_advanced_site_search, 4, type: :bool, json_name: "createAdvancedSiteSearch"
  field :skip_default_schema_creation, 7, type: :bool, json_name: "skipDefaultSchemaCreation"
end

defmodule Google.Cloud.Discoveryengine.V1.GetDataStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.CreateDataStoreMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.ListDataStoresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.ListDataStoresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_stores, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.DataStore,
    json_name: "dataStores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteDataStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateDataStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_store, 1,
    type: Google.Cloud.Discoveryengine.V1.DataStore,
    json_name: "dataStore",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteDataStoreMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.DataStoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.DataStoreService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateDataStore,
      Google.Cloud.Discoveryengine.V1.CreateDataStoreRequest,
      Google.Longrunning.Operation

  rpc :GetDataStore,
      Google.Cloud.Discoveryengine.V1.GetDataStoreRequest,
      Google.Cloud.Discoveryengine.V1.DataStore

  rpc :ListDataStores,
      Google.Cloud.Discoveryengine.V1.ListDataStoresRequest,
      Google.Cloud.Discoveryengine.V1.ListDataStoresResponse

  rpc :DeleteDataStore,
      Google.Cloud.Discoveryengine.V1.DeleteDataStoreRequest,
      Google.Longrunning.Operation

  rpc :UpdateDataStore,
      Google.Cloud.Discoveryengine.V1.UpdateDataStoreRequest,
      Google.Cloud.Discoveryengine.V1.DataStore
end

defmodule Google.Cloud.Discoveryengine.V1.DataStoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.DataStoreService.Service
end