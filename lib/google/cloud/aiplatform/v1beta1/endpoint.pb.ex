defmodule Google.Cloud.Aiplatform.V1beta1.Endpoint.TrafficSplitEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int32

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Endpoint.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          deployed_models: [Google.Cloud.Aiplatform.V1beta1.DeployedModel.t()],
          traffic_split: %{String.t() => integer},
          etag: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          encryption_spec: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec.t() | nil,
          network: String.t(),
          model_deployment_monitoring_job: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :deployed_models,
    :traffic_split,
    :etag,
    :labels,
    :create_time,
    :update_time,
    :encryption_spec,
    :network,
    :model_deployment_monitoring_job
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :deployed_models, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedModel,
    json_name: "deployedModels"

  field :traffic_split, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Endpoint.TrafficSplitEntry,
    json_name: "trafficSplit",
    map: true

  field :etag, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Endpoint.LabelsEntry,
    map: true

  field :create_time, 8, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 9, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :encryption_spec, 10,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :network, 13, type: :string

  field :model_deployment_monitoring_job, 14,
    type: :string,
    json_name: "modelDeploymentMonitoringJob"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployedModel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          prediction_resources:
            {:dedicated_resources, Google.Cloud.Aiplatform.V1beta1.DedicatedResources.t() | nil}
            | {:automatic_resources, Google.Cloud.Aiplatform.V1beta1.AutomaticResources.t() | nil},
          id: String.t(),
          model: String.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          explanation_spec: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec.t() | nil,
          service_account: String.t(),
          enable_container_logging: boolean,
          enable_access_logging: boolean,
          private_endpoints: Google.Cloud.Aiplatform.V1beta1.PrivateEndpoints.t() | nil
        }

  defstruct [
    :prediction_resources,
    :id,
    :model,
    :display_name,
    :create_time,
    :explanation_spec,
    :service_account,
    :enable_container_logging,
    :enable_access_logging,
    :private_endpoints
  ]

  oneof :prediction_resources, 0

  field :dedicated_resources, 7,
    type: Google.Cloud.Aiplatform.V1beta1.DedicatedResources,
    json_name: "dedicatedResources",
    oneof: 0

  field :automatic_resources, 8,
    type: Google.Cloud.Aiplatform.V1beta1.AutomaticResources,
    json_name: "automaticResources",
    oneof: 0

  field :id, 1, type: :string
  field :model, 2, type: :string
  field :display_name, 3, type: :string, json_name: "displayName"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :explanation_spec, 9,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec,
    json_name: "explanationSpec"

  field :service_account, 11, type: :string, json_name: "serviceAccount"
  field :enable_container_logging, 12, type: :bool, json_name: "enableContainerLogging"
  field :enable_access_logging, 13, type: :bool, json_name: "enableAccessLogging"

  field :private_endpoints, 14,
    type: Google.Cloud.Aiplatform.V1beta1.PrivateEndpoints,
    json_name: "privateEndpoints"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.PrivateEndpoints do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          predict_http_uri: String.t(),
          explain_http_uri: String.t(),
          health_http_uri: String.t()
        }

  defstruct [:predict_http_uri, :explain_http_uri, :health_http_uri]

  field :predict_http_uri, 1, type: :string, json_name: "predictHttpUri"
  field :explain_http_uri, 2, type: :string, json_name: "explainHttpUri"
  field :health_http_uri, 3, type: :string, json_name: "healthHttpUri"

  def transform_module(), do: nil
end
