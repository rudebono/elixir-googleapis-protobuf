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
