defmodule Google.Cloud.Baremetalsolution.V2.Lun.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :UPDATING, 2
  field :READY, 3
  field :DELETING, 4
end
defmodule Google.Cloud.Baremetalsolution.V2.Lun.MultiprotocolType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :MULTIPROTOCOL_TYPE_UNSPECIFIED, 0
  field :LINUX, 1
end
defmodule Google.Cloud.Baremetalsolution.V2.Lun.StorageType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STORAGE_TYPE_UNSPECIFIED, 0
  field :SSD, 1
  field :HDD, 2
end
defmodule Google.Cloud.Baremetalsolution.V2.Lun do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 10, type: :string
  field :state, 2, type: Google.Cloud.Baremetalsolution.V2.Lun.State, enum: true
  field :size_gb, 3, type: :int64, json_name: "sizeGb"

  field :multiprotocol_type, 4,
    type: Google.Cloud.Baremetalsolution.V2.Lun.MultiprotocolType,
    json_name: "multiprotocolType",
    enum: true

  field :storage_volume, 5, type: :string, json_name: "storageVolume", deprecated: false
  field :shareable, 6, type: :bool
  field :boot_lun, 7, type: :bool, json_name: "bootLun"

  field :storage_type, 8,
    type: Google.Cloud.Baremetalsolution.V2.Lun.StorageType,
    json_name: "storageType",
    enum: true

  field :wwid, 9, type: :string
end
defmodule Google.Cloud.Baremetalsolution.V2.GetLunRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Baremetalsolution.V2.ListLunsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Baremetalsolution.V2.ListLunsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :luns, 1, repeated: true, type: Google.Cloud.Baremetalsolution.V2.Lun
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
