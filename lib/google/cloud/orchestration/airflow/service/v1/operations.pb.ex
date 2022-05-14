defmodule Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :SUCCESSFUL, 3
  field :FAILED, 4
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CREATE, 1
  field :DELETE, 2
  field :UPDATE, 3
  field :CHECK, 4
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.State,
    enum: true

  field :operation_type, 2,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.OperationMetadata.Type,
    json_name: "operationType",
    enum: true

  field :resource, 3, type: :string
  field :resource_uuid, 4, type: :string, json_name: "resourceUuid"
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
