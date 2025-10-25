defmodule Google.Cloud.Oracledatabase.V1.DbSystemInitialStorageSizeProperties.StorageManagement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORAGE_MANAGEMENT_UNSPECIFIED, 0
  field :ASM, 1
  field :LVM, 2
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystemInitialStorageSizeProperties.ShapeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SHAPE_TYPE_UNSPECIFIED, 0
  field :STANDARD_X86, 1
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystemInitialStorageSize do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 2, type: :string, deprecated: false

  field :properties, 3,
    type: Google.Cloud.Oracledatabase.V1.DbSystemInitialStorageSizeProperties,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystemInitialStorageSizeProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :storage_management, 1,
    type: Google.Cloud.Oracledatabase.V1.DbSystemInitialStorageSizeProperties.StorageManagement,
    json_name: "storageManagement",
    enum: true,
    deprecated: false

  field :shape_type, 2,
    type: Google.Cloud.Oracledatabase.V1.DbSystemInitialStorageSizeProperties.ShapeType,
    json_name: "shapeType",
    enum: true,
    deprecated: false

  field :storage_size_details, 3,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.StorageSizeDetails,
    json_name: "storageSizeDetails",
    deprecated: false

  field :launch_from_backup_storage_size_details, 4,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.StorageSizeDetails,
    json_name: "launchFromBackupStorageSizeDetails",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.StorageSizeDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_storage_size_in_gbs, 1,
    type: :int32,
    json_name: "dataStorageSizeInGbs",
    deprecated: false

  field :reco_storage_size_in_gbs, 2,
    type: :int32,
    json_name: "recoStorageSizeInGbs",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbSystemInitialStorageSizesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbSystemInitialStorageSizesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :db_system_initial_storage_sizes, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DbSystemInitialStorageSize,
    json_name: "dbSystemInitialStorageSizes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
