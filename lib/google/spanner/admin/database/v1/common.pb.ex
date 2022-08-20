defmodule Google.Spanner.Admin.Database.V1.DatabaseDialect do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATABASE_DIALECT_UNSPECIFIED, 0
  field :GOOGLE_STANDARD_SQL, 1
  field :POSTGRESQL, 2
end

defmodule Google.Spanner.Admin.Database.V1.EncryptionInfo.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GOOGLE_DEFAULT_ENCRYPTION, 1
  field :CUSTOMER_MANAGED_ENCRYPTION, 2
end

defmodule Google.Spanner.Admin.Database.V1.OperationProgress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :progress_percent, 1, type: :int32, json_name: "progressPercent"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Spanner.Admin.Database.V1.EncryptionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName", deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.EncryptionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :encryption_type, 3,
    type: Google.Spanner.Admin.Database.V1.EncryptionInfo.Type,
    json_name: "encryptionType",
    enum: true,
    deprecated: false

  field :encryption_status, 4,
    type: Google.Rpc.Status,
    json_name: "encryptionStatus",
    deprecated: false

  field :kms_key_version, 2, type: :string, json_name: "kmsKeyVersion", deprecated: false
end