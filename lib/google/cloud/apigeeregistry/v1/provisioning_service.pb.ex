defmodule Google.Cloud.Apigeeregistry.V1.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :CREATING, 2
  field :ACTIVE, 3
  field :UPDATING, 4
  field :DELETING, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Apigeeregistry.V1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Apigeeregistry.V1.Instance, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :cancellation_requested, 6, type: :bool, json_name: "cancellationRequested"
  field :api_version, 7, type: :string, json_name: "apiVersion"
end

defmodule Google.Cloud.Apigeeregistry.V1.Instance.Config do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :cmek_key_name, 2, type: :string, json_name: "cmekKeyName", deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.Instance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Apigeeregistry.V1.Instance.State,
    enum: true,
    deprecated: false

  field :state_message, 5, type: :string, json_name: "stateMessage", deprecated: false
  field :config, 6, type: Google.Cloud.Apigeeregistry.V1.Instance.Config, deprecated: false
end

defmodule Google.Cloud.Apigeeregistry.V1.Provisioning.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.apigeeregistry.v1.Provisioning",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateInstance,
      Google.Cloud.Apigeeregistry.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Apigeeregistry.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :GetInstance,
      Google.Cloud.Apigeeregistry.V1.GetInstanceRequest,
      Google.Cloud.Apigeeregistry.V1.Instance
end

defmodule Google.Cloud.Apigeeregistry.V1.Provisioning.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Apigeeregistry.V1.Provisioning.Service
end