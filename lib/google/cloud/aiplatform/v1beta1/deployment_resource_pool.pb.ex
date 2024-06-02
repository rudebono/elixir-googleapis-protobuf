defmodule Google.Cloud.Aiplatform.V1beta1.DeploymentResourcePool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :dedicated_resources, 2,
    type: Google.Cloud.Aiplatform.V1beta1.DedicatedResources,
    json_name: "dedicatedResources",
    deprecated: false

  field :encryption_spec, 5,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :service_account, 6, type: :string, json_name: "serviceAccount"
  field :disable_container_logging, 7, type: :bool, json_name: "disableContainerLogging"

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end