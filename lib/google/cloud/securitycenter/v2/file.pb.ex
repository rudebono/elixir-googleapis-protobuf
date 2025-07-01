defmodule Google.Cloud.Securitycenter.V2.File.FileOperation.OperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :OPEN, 1
  field :READ, 2
  field :RENAME, 3
  field :WRITE, 4
  field :EXECUTE, 5
end

defmodule Google.Cloud.Securitycenter.V2.File.DiskPath do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :partition_uuid, 1, type: :string, json_name: "partitionUuid"
  field :relative_path, 2, type: :string, json_name: "relativePath"
end

defmodule Google.Cloud.Securitycenter.V2.File.FileOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Securitycenter.V2.File.FileOperation.OperationType,
    enum: true
end

defmodule Google.Cloud.Securitycenter.V2.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: :string
  field :size, 2, type: :int64
  field :sha256, 3, type: :string
  field :hashed_size, 4, type: :int64, json_name: "hashedSize"
  field :partially_hashed, 5, type: :bool, json_name: "partiallyHashed"
  field :contents, 6, type: :string
  field :disk_path, 7, type: Google.Cloud.Securitycenter.V2.File.DiskPath, json_name: "diskPath"
  field :operations, 8, repeated: true, type: Google.Cloud.Securitycenter.V2.File.FileOperation
end
