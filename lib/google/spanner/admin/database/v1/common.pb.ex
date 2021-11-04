defmodule Google.Spanner.Admin.Database.V1.EncryptionInfo.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :TYPE_UNSPECIFIED | :GOOGLE_DEFAULT_ENCRYPTION | :CUSTOMER_MANAGED_ENCRYPTION

  field :TYPE_UNSPECIFIED, 0
  field :GOOGLE_DEFAULT_ENCRYPTION, 1
  field :CUSTOMER_MANAGED_ENCRYPTION, 2
end

defmodule Google.Spanner.Admin.Database.V1.OperationProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress_percent: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:progress_percent, :start_time, :end_time]

  field :progress_percent, 1, type: :int32, json_name: "progressPercent"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Database.V1.EncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct [:kms_key_name]

  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Database.V1.EncryptionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encryption_type: Google.Spanner.Admin.Database.V1.EncryptionInfo.Type.t(),
          encryption_status: Google.Rpc.Status.t() | nil,
          kms_key_version: String.t()
        }

  defstruct [:encryption_type, :encryption_status, :kms_key_version]

  field :encryption_type, 3,
    type: Google.Spanner.Admin.Database.V1.EncryptionInfo.Type,
    enum: true,
    json_name: "encryptionType"

  field :encryption_status, 4, type: Google.Rpc.Status, json_name: "encryptionStatus"
  field :kms_key_version, 2, type: :string, json_name: "kmsKeyVersion"

  def transform_module(), do: nil
end
