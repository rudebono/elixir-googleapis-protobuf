defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureOnlineStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :feature_online_store, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStore,
    json_name: "featureOnlineStore",
    deprecated: false

  field :feature_online_store_id, 3,
    type: :string,
    json_name: "featureOnlineStoreId",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetFeatureOnlineStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureOnlineStoresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureOnlineStoresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :feature_online_stores, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStore,
    json_name: "featureOnlineStores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureOnlineStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :feature_online_store, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStore,
    json_name: "featureOnlineStore",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteFeatureOnlineStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :feature_view, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView,
    json_name: "featureView",
    deprecated: false

  field :feature_view_id, 3, type: :string, json_name: "featureViewId", deprecated: false
  field :run_sync_immediately, 4, type: :bool, json_name: "runSyncImmediately", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetFeatureViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureViewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureViewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :feature_views, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView,
    json_name: "featureViews"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :feature_view, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView,
    json_name: "featureView",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteFeatureViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureOnlineStoreOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureOnlineStoreOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureViewOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureViewOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SyncFeatureViewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :feature_view, 1, type: :string, json_name: "featureView", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SyncFeatureViewResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :feature_view_sync, 1, type: :string, json_name: "featureViewSync"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetFeatureViewSyncRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureViewSyncsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureViewSyncsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :feature_view_syncs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureViewSync,
    json_name: "featureViewSyncs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStoreAdminService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.FeatureOnlineStoreAdminService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateFeatureOnlineStore,
      Google.Cloud.Aiplatform.V1beta1.CreateFeatureOnlineStoreRequest,
      Google.Longrunning.Operation

  rpc :GetFeatureOnlineStore,
      Google.Cloud.Aiplatform.V1beta1.GetFeatureOnlineStoreRequest,
      Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStore

  rpc :ListFeatureOnlineStores,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureOnlineStoresRequest,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureOnlineStoresResponse

  rpc :UpdateFeatureOnlineStore,
      Google.Cloud.Aiplatform.V1beta1.UpdateFeatureOnlineStoreRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeatureOnlineStore,
      Google.Cloud.Aiplatform.V1beta1.DeleteFeatureOnlineStoreRequest,
      Google.Longrunning.Operation

  rpc :CreateFeatureView,
      Google.Cloud.Aiplatform.V1beta1.CreateFeatureViewRequest,
      Google.Longrunning.Operation

  rpc :GetFeatureView,
      Google.Cloud.Aiplatform.V1beta1.GetFeatureViewRequest,
      Google.Cloud.Aiplatform.V1beta1.FeatureView

  rpc :ListFeatureViews,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureViewsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureViewsResponse

  rpc :UpdateFeatureView,
      Google.Cloud.Aiplatform.V1beta1.UpdateFeatureViewRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeatureView,
      Google.Cloud.Aiplatform.V1beta1.DeleteFeatureViewRequest,
      Google.Longrunning.Operation

  rpc :SyncFeatureView,
      Google.Cloud.Aiplatform.V1beta1.SyncFeatureViewRequest,
      Google.Cloud.Aiplatform.V1beta1.SyncFeatureViewResponse

  rpc :GetFeatureViewSync,
      Google.Cloud.Aiplatform.V1beta1.GetFeatureViewSyncRequest,
      Google.Cloud.Aiplatform.V1beta1.FeatureViewSync

  rpc :ListFeatureViewSyncs,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureViewSyncsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureViewSyncsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStoreAdminService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStoreAdminService.Service
end
