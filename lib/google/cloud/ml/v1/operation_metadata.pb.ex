defmodule Google.Cloud.Ml.V1.OperationMetadata.OperationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPERATION_TYPE_UNSPECIFIED
          | :CREATE_VERSION
          | :DELETE_VERSION
          | :DELETE_MODEL

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :CREATE_VERSION, 1
  field :DELETE_VERSION, 2
  field :DELETE_MODEL, 3
end

defmodule Google.Cloud.Ml.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          is_cancellation_requested: boolean,
          operation_type: Google.Cloud.Ml.V1.OperationMetadata.OperationType.t(),
          model_name: String.t(),
          version: Google.Cloud.Ml.V1.Version.t() | nil
        }

  defstruct [
    :create_time,
    :start_time,
    :end_time,
    :is_cancellation_requested,
    :operation_type,
    :model_name,
    :version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :is_cancellation_requested, 4, type: :bool, json_name: "isCancellationRequested"

  field :operation_type, 5,
    type: Google.Cloud.Ml.V1.OperationMetadata.OperationType,
    enum: true,
    json_name: "operationType"

  field :model_name, 6, type: :string, json_name: "modelName"
  field :version, 7, type: Google.Cloud.Ml.V1.Version

  def transform_module(), do: nil
end
