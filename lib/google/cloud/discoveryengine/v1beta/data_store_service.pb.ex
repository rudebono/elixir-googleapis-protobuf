defmodule Google.Cloud.Discoveryengine.V1beta.CreateDataStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_store, 2,
    type: Google.Cloud.Discoveryengine.V1beta.DataStore,
    json_name: "dataStore",
    deprecated: false

  field :data_store_id, 3, type: :string, json_name: "dataStoreId", deprecated: false
  field :create_advanced_site_search, 4, type: :bool, json_name: "createAdvancedSiteSearch"
end

defmodule Google.Cloud.Discoveryengine.V1beta.GetDataStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.CreateDataStoreMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListDataStoresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListDataStoresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_stores, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.DataStore,
    json_name: "dataStores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteDataStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.UpdateDataStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_store, 1,
    type: Google.Cloud.Discoveryengine.V1beta.DataStore,
    json_name: "dataStore",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteDataStoreMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DataStoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.DataStoreService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateDataStore,
      Google.Cloud.Discoveryengine.V1beta.CreateDataStoreRequest,
      Google.Longrunning.Operation

  rpc :GetDataStore,
      Google.Cloud.Discoveryengine.V1beta.GetDataStoreRequest,
      Google.Cloud.Discoveryengine.V1beta.DataStore

  rpc :ListDataStores,
      Google.Cloud.Discoveryengine.V1beta.ListDataStoresRequest,
      Google.Cloud.Discoveryengine.V1beta.ListDataStoresResponse

  rpc :DeleteDataStore,
      Google.Cloud.Discoveryengine.V1beta.DeleteDataStoreRequest,
      Google.Longrunning.Operation

  rpc :UpdateDataStore,
      Google.Cloud.Discoveryengine.V1beta.UpdateDataStoreRequest,
      Google.Cloud.Discoveryengine.V1beta.DataStore
end

defmodule Google.Cloud.Discoveryengine.V1beta.DataStoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.DataStoreService.Service
end