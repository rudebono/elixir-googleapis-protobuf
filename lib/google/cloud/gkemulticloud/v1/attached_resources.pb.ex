defmodule Google.Cloud.Gkemulticloud.V1.AttachedCluster.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RECONCILING, 3
  field :STOPPING, 4
  field :ERROR, 5
  field :DEGRADED, 6
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedCluster.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string, deprecated: false

  field :oidc_config, 3,
    type: Google.Cloud.Gkemulticloud.V1.AttachedOidcConfig,
    json_name: "oidcConfig",
    deprecated: false

  field :platform_version, 4, type: :string, json_name: "platformVersion", deprecated: false
  field :distribution, 16, type: :string, deprecated: false
  field :cluster_region, 22, type: :string, json_name: "clusterRegion", deprecated: false
  field :fleet, 5, type: Google.Cloud.Gkemulticloud.V1.Fleet, deprecated: false

  field :state, 6,
    type: Google.Cloud.Gkemulticloud.V1.AttachedCluster.State,
    enum: true,
    deprecated: false

  field :uid, 7, type: :string, deprecated: false
  field :reconciling, 8, type: :bool, deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 11, type: :string
  field :kubernetes_version, 12, type: :string, json_name: "kubernetesVersion", deprecated: false

  field :annotations, 13,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AttachedCluster.AnnotationsEntry,
    map: true,
    deprecated: false

  field :workload_identity_config, 14,
    type: Google.Cloud.Gkemulticloud.V1.WorkloadIdentityConfig,
    json_name: "workloadIdentityConfig",
    deprecated: false

  field :logging_config, 15,
    type: Google.Cloud.Gkemulticloud.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false

  field :errors, 20,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AttachedClusterError,
    deprecated: false

  field :authorization, 21,
    type: Google.Cloud.Gkemulticloud.V1.AttachedClustersAuthorization,
    deprecated: false

  field :monitoring_config, 23,
    type: Google.Cloud.Gkemulticloud.V1.MonitoringConfig,
    json_name: "monitoringConfig",
    deprecated: false

  field :proxy_config, 24,
    type: Google.Cloud.Gkemulticloud.V1.AttachedProxyConfig,
    json_name: "proxyConfig",
    deprecated: false

  field :binary_authorization, 25,
    type: Google.Cloud.Gkemulticloud.V1.BinaryAuthorization,
    json_name: "binaryAuthorization",
    deprecated: false

  field :security_posture_config, 26,
    type: Google.Cloud.Gkemulticloud.V1.SecurityPostureConfig,
    json_name: "securityPostureConfig",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedClustersAuthorization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :admin_users, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AttachedClusterUser,
    json_name: "adminUsers",
    deprecated: false

  field :admin_groups, 2,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AttachedClusterGroup,
    json_name: "adminGroups",
    deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedClusterUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedClusterGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :group, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedOidcConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :issuer_url, 1, type: :string, json_name: "issuerUrl"
  field :jwks, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedServerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string

  field :valid_versions, 2,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AttachedPlatformVersionInfo,
    json_name: "validVersions"
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedPlatformVersionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedClusterError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :message, 1, type: :string
end

defmodule Google.Cloud.Gkemulticloud.V1.AttachedProxyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kubernetes_secret, 1,
    type: Google.Cloud.Gkemulticloud.V1.KubernetesSecret,
    json_name: "kubernetesSecret"
end

defmodule Google.Cloud.Gkemulticloud.V1.KubernetesSecret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :namespace, 2, type: :string
end