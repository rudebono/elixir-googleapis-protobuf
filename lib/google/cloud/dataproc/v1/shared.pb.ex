defmodule Google.Cloud.Dataproc.V1.Component do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMPONENT_UNSPECIFIED
          | :ANACONDA
          | :DOCKER
          | :DRUID
          | :FLINK
          | :HBASE
          | :HIVE_WEBHCAT
          | :JUPYTER
          | :PRESTO
          | :RANGER
          | :SOLR
          | :ZEPPELIN
          | :ZOOKEEPER

  field :COMPONENT_UNSPECIFIED, 0
  field :ANACONDA, 5
  field :DOCKER, 13
  field :DRUID, 9
  field :FLINK, 14
  field :HBASE, 11
  field :HIVE_WEBHCAT, 3
  field :JUPYTER, 1
  field :PRESTO, 6
  field :RANGER, 12
  field :SOLR, 10
  field :ZEPPELIN, 4
  field :ZOOKEEPER, 8
end
defmodule Google.Cloud.Dataproc.V1.FailureAction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FAILURE_ACTION_UNSPECIFIED | :NO_ACTION | :DELETE

  field :FAILURE_ACTION_UNSPECIFIED, 0
  field :NO_ACTION, 1
  field :DELETE, 2
end
defmodule Google.Cloud.Dataproc.V1.GkeNodePoolTarget.Role do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :ROLE_UNSPECIFIED | :DEFAULT | :CONTROLLER | :SPARK_DRIVER | :SPARK_EXECUTOR

  field :ROLE_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :CONTROLLER, 2
  field :SPARK_DRIVER, 3
  field :SPARK_EXECUTOR, 4
end
defmodule Google.Cloud.Dataproc.V1.RuntimeConfig.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.RuntimeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          container_image: String.t(),
          properties: %{String.t() => String.t()}
        }

  defstruct version: "",
            container_image: "",
            properties: %{}

  field :version, 1, type: :string, deprecated: false
  field :container_image, 2, type: :string, json_name: "containerImage", deprecated: false

  field :properties, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.RuntimeConfig.PropertiesEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.EnvironmentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execution_config: Google.Cloud.Dataproc.V1.ExecutionConfig.t() | nil,
          peripherals_config: Google.Cloud.Dataproc.V1.PeripheralsConfig.t() | nil
        }

  defstruct execution_config: nil,
            peripherals_config: nil

  field :execution_config, 1,
    type: Google.Cloud.Dataproc.V1.ExecutionConfig,
    json_name: "executionConfig",
    deprecated: false

  field :peripherals_config, 2,
    type: Google.Cloud.Dataproc.V1.PeripheralsConfig,
    json_name: "peripheralsConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.ExecutionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network: {:network_uri, String.t()} | {:subnetwork_uri, String.t()},
          service_account: String.t(),
          network_tags: [String.t()],
          kms_key: String.t()
        }

  defstruct network: nil,
            service_account: "",
            network_tags: [],
            kms_key: ""

  oneof :network, 0

  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false
  field :network_uri, 4, type: :string, json_name: "networkUri", oneof: 0, deprecated: false
  field :subnetwork_uri, 5, type: :string, json_name: "subnetworkUri", oneof: 0, deprecated: false

  field :network_tags, 6,
    repeated: true,
    type: :string,
    json_name: "networkTags",
    deprecated: false

  field :kms_key, 7, type: :string, json_name: "kmsKey", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.SparkHistoryServerConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataproc_cluster: String.t()
        }

  defstruct dataproc_cluster: ""

  field :dataproc_cluster, 1, type: :string, json_name: "dataprocCluster", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.PeripheralsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metastore_service: String.t(),
          spark_history_server_config: Google.Cloud.Dataproc.V1.SparkHistoryServerConfig.t() | nil
        }

  defstruct metastore_service: "",
            spark_history_server_config: nil

  field :metastore_service, 1, type: :string, json_name: "metastoreService", deprecated: false

  field :spark_history_server_config, 2,
    type: Google.Cloud.Dataproc.V1.SparkHistoryServerConfig,
    json_name: "sparkHistoryServerConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.RuntimeInfo.EndpointsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.RuntimeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoints: %{String.t() => String.t()},
          output_uri: String.t(),
          diagnostic_output_uri: String.t()
        }

  defstruct endpoints: %{},
            output_uri: "",
            diagnostic_output_uri: ""

  field :endpoints, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.RuntimeInfo.EndpointsEntry,
    map: true,
    deprecated: false

  field :output_uri, 2, type: :string, json_name: "outputUri", deprecated: false

  field :diagnostic_output_uri, 3,
    type: :string,
    json_name: "diagnosticOutputUri",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.GkeClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gke_cluster_target: String.t(),
          node_pool_target: [Google.Cloud.Dataproc.V1.GkeNodePoolTarget.t()]
        }

  defstruct gke_cluster_target: "",
            node_pool_target: []

  field :gke_cluster_target, 2, type: :string, json_name: "gkeClusterTarget", deprecated: false

  field :node_pool_target, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolTarget,
    json_name: "nodePoolTarget",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.KubernetesClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: {:gke_cluster_config, Google.Cloud.Dataproc.V1.GkeClusterConfig.t() | nil},
          kubernetes_namespace: String.t(),
          kubernetes_software_config: Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig.t() | nil
        }

  defstruct config: nil,
            kubernetes_namespace: "",
            kubernetes_software_config: nil

  oneof :config, 0

  field :kubernetes_namespace, 1,
    type: :string,
    json_name: "kubernetesNamespace",
    deprecated: false

  field :gke_cluster_config, 2,
    type: Google.Cloud.Dataproc.V1.GkeClusterConfig,
    json_name: "gkeClusterConfig",
    oneof: 0,
    deprecated: false

  field :kubernetes_software_config, 3,
    type: Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig,
    json_name: "kubernetesSoftwareConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig.ComponentVersionEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          component_version: %{String.t() => String.t()},
          properties: %{String.t() => String.t()}
        }

  defstruct component_version: %{},
            properties: %{}

  field :component_version, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig.ComponentVersionEntry,
    json_name: "componentVersion",
    map: true

  field :properties, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.KubernetesSoftwareConfig.PropertiesEntry,
    map: true
end
defmodule Google.Cloud.Dataproc.V1.GkeNodePoolTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_pool: String.t(),
          roles: [Google.Cloud.Dataproc.V1.GkeNodePoolTarget.Role.t()],
          node_pool_config: Google.Cloud.Dataproc.V1.GkeNodePoolConfig.t() | nil
        }

  defstruct node_pool: "",
            roles: [],
            node_pool_config: nil

  field :node_pool, 1, type: :string, json_name: "nodePool", deprecated: false

  field :roles, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolTarget.Role,
    enum: true,
    deprecated: false

  field :node_pool_config, 3,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolConfig,
    json_name: "nodePoolConfig",
    deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t(),
          preemptible: boolean,
          local_ssd_count: integer,
          accelerators: [
            Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAcceleratorConfig.t()
          ],
          min_cpu_platform: String.t()
        }

  defstruct machine_type: "",
            preemptible: false,
            local_ssd_count: 0,
            accelerators: [],
            min_cpu_platform: ""

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false
  field :preemptible, 10, type: :bool, deprecated: false
  field :local_ssd_count, 7, type: :int32, json_name: "localSsdCount", deprecated: false

  field :accelerators, 11,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAcceleratorConfig,
    deprecated: false

  field :min_cpu_platform, 13, type: :string, json_name: "minCpuPlatform", deprecated: false
end
defmodule Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAcceleratorConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accelerator_count: integer,
          accelerator_type: String.t()
        }

  defstruct accelerator_count: 0,
            accelerator_type: ""

  field :accelerator_count, 1, type: :int64, json_name: "acceleratorCount"
  field :accelerator_type, 2, type: :string, json_name: "acceleratorType"
end
defmodule Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAutoscalingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_node_count: integer,
          max_node_count: integer
        }

  defstruct min_node_count: 0,
            max_node_count: 0

  field :min_node_count, 2, type: :int32, json_name: "minNodeCount"
  field :max_node_count, 3, type: :int32, json_name: "maxNodeCount"
end
defmodule Google.Cloud.Dataproc.V1.GkeNodePoolConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodeConfig.t() | nil,
          locations: [String.t()],
          autoscaling:
            Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAutoscalingConfig.t() | nil
        }

  defstruct config: nil,
            locations: [],
            autoscaling: nil

  field :config, 2,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodeConfig,
    deprecated: false

  field :locations, 13, repeated: true, type: :string, deprecated: false

  field :autoscaling, 4,
    type: Google.Cloud.Dataproc.V1.GkeNodePoolConfig.GkeNodePoolAutoscalingConfig,
    deprecated: false
end
