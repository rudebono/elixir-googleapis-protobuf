defmodule Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVaultProperties.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :UPDATING, 3
  field :TERMINATING, 4
  field :TERMINATED, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVaultProperties.ShapeAttribute do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SHAPE_ATTRIBUTE_UNSPECIFIED, 0
  field :SMART_STORAGE, 1
  field :BLOCK_STORAGE, 2
end

defmodule Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVault.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVault do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :gcp_oracle_zone, 3, type: :string, json_name: "gcpOracleZone", deprecated: false

  field :properties, 4,
    type: Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVaultProperties,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :entitlement_id, 6, type: :string, json_name: "entitlementId", deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVault.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVaultProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ocid, 1, type: :string, deprecated: false
  field :time_zone, 2, type: Google.Type.TimeZone, json_name: "timeZone", deprecated: false

  field :exascale_db_storage_details, 3,
    type: Google.Cloud.Oracledatabase.V1.ExascaleDbStorageDetails,
    json_name: "exascaleDbStorageDetails",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVaultProperties.State,
    enum: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false

  field :vm_cluster_ids, 6,
    repeated: true,
    type: :string,
    json_name: "vmClusterIds",
    deprecated: false

  field :vm_cluster_count, 9, type: :int32, json_name: "vmClusterCount", deprecated: false

  field :additional_flash_cache_percent, 7,
    type: :int32,
    json_name: "additionalFlashCachePercent",
    deprecated: false

  field :oci_uri, 8, type: :string, json_name: "ociUri", deprecated: false

  field :attached_shape_attributes, 10,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVaultProperties.ShapeAttribute,
    json_name: "attachedShapeAttributes",
    enum: true,
    deprecated: false

  field :available_shape_attributes, 11,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVaultProperties.ShapeAttribute,
    json_name: "availableShapeAttributes",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ExascaleDbStorageDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :available_size_gbs, 1, type: :int32, json_name: "availableSizeGbs", deprecated: false
  field :total_size_gbs, 2, type: :int32, json_name: "totalSizeGbs", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.GetExascaleDbStorageVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListExascaleDbStorageVaultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListExascaleDbStorageVaultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :exascale_db_storage_vaults, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVault,
    json_name: "exascaleDbStorageVaults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Oracledatabase.V1.CreateExascaleDbStorageVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :exascale_db_storage_vault_id, 2,
    type: :string,
    json_name: "exascaleDbStorageVaultId",
    deprecated: false

  field :exascale_db_storage_vault, 3,
    type: Google.Cloud.Oracledatabase.V1.ExascaleDbStorageVault,
    json_name: "exascaleDbStorageVault",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DeleteExascaleDbStorageVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
