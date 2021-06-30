defmodule Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :STATE_UNSPECIFIED | :PENDING | :RUNNING | :SUCCEEDED | :SUCCESSFUL | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :PENDING, 1

  field :RUNNING, 2

  field :SUCCEEDED, 3

  field :SUCCESSFUL, 3

  field :FAILED, 4
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :CREATE | :DELETE | :UPDATE | :CHECK

  field :TYPE_UNSPECIFIED, 0

  field :CREATE, 1

  field :DELETE, 2

  field :UPDATE, 3

  field :CHECK, 4
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.State.t(),
          operation_type:
            Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.Type.t(),
          resource: String.t(),
          resource_uuid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:state, :operation_type, :resource, :resource_uuid, :create_time, :end_time]

  field :state, 1,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.State,
    enum: true

  field :operation_type, 2,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.Type,
    enum: true

  field :resource, 3, type: :string
  field :resource_uuid, 4, type: :string
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :end_time, 6, type: Google.Protobuf.Timestamp
end
