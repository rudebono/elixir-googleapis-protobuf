defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.MembershipState.LifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LIFECYCLE_STATE_UNSPECIFIED, 0
  field :NOT_INSTALLED, 1
  field :INSTALLING, 2
  field :ACTIVE, 3
  field :UPDATING, 4
  field :DECOMMISSIONING, 5
  field :CLUSTER_ERROR, 6
  field :HUB_ERROR, 7
  field :SUSPENDED, 8
  field :DETACHED, 9
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.HubConfig.InstallSpec do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INSTALL_SPEC_UNSPECIFIED, 0
  field :INSTALL_SPEC_NOT_INSTALLED, 1
  field :INSTALL_SPEC_ENABLED, 2
  field :INSTALL_SPEC_SUSPENDED, 3
  field :INSTALL_SPEC_DETACHED, 4
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyControllerDeploymentConfig.Affinity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AFFINITY_UNSPECIFIED, 0
  field :NO_AFFINITY, 1
  field :ANTI_AFFINITY, 2
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.TemplateLibraryConfig.Installation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INSTALLATION_UNSPECIFIED, 0
  field :NOT_INSTALLED, 1
  field :ALL, 2
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.MonitoringConfig.MonitoringBackend do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MONITORING_BACKEND_UNSPECIFIED, 0
  field :PROMETHEUS, 1
  field :CLOUD_MONITORING, 2
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.MembershipState.ComponentStatesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gkehub.Policycontroller.V1beta.OnClusterState
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.MembershipState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :component_states, 3,
    repeated: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.MembershipState.ComponentStatesEntry,
    json_name: "componentStates",
    map: true

  field :state, 4,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.MembershipState.LifecycleState,
    enum: true

  field :policy_content_state, 6,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyContentState,
    json_name: "policyContentState"
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyContentState.BundleStatesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gkehub.Policycontroller.V1beta.OnClusterState
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyContentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :template_library_state, 1,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.OnClusterState,
    json_name: "templateLibraryState"

  field :bundle_states, 2,
    repeated: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyContentState.BundleStatesEntry,
    json_name: "bundleStates",
    map: true

  field :referential_sync_config_state, 3,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.OnClusterState,
    json_name: "referentialSyncConfigState"
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.MembershipSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy_controller_hub_config, 1,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.HubConfig,
    json_name: "policyControllerHubConfig"

  field :version, 2, type: :string
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.HubConfig.DeploymentConfigsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyControllerDeploymentConfig
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.HubConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :install_spec, 1,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.HubConfig.InstallSpec,
    json_name: "installSpec",
    enum: true

  field :audit_interval_seconds, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "auditIntervalSeconds"

  field :exemptable_namespaces, 3,
    repeated: true,
    type: :string,
    json_name: "exemptableNamespaces"

  field :referential_rules_enabled, 4, type: :bool, json_name: "referentialRulesEnabled"
  field :log_denies_enabled, 5, type: :bool, json_name: "logDeniesEnabled"
  field :mutation_enabled, 6, type: :bool, json_name: "mutationEnabled"

  field :monitoring, 8,
    proto3_optional: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.MonitoringConfig

  field :policy_content, 9,
    proto3_optional: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyContentSpec,
    json_name: "policyContent"

  field :constraint_violation_limit, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "constraintViolationLimit"

  field :deployment_configs, 11,
    repeated: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.HubConfig.DeploymentConfigsEntry,
    json_name: "deploymentConfigs",
    map: true
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyControllerDeploymentConfig.Toleration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, proto3_optional: true, type: :string
  field :operator, 2, proto3_optional: true, type: :string
  field :value, 3, proto3_optional: true, type: :string
  field :effect, 4, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyControllerDeploymentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :replica_count, 1, proto3_optional: true, type: :int64, json_name: "replicaCount"

  field :container_resources, 2,
    proto3_optional: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.ResourceRequirements,
    json_name: "containerResources"

  field :pod_anti_affinity, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "podAntiAffinity",
    deprecated: true

  field :pod_tolerations, 4,
    repeated: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyControllerDeploymentConfig.Toleration,
    json_name: "podTolerations"

  field :pod_affinity, 5,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyControllerDeploymentConfig.Affinity,
    json_name: "podAffinity",
    enum: true
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.ResourceRequirements do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :limits, 1,
    proto3_optional: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.ResourceList

  field :requests, 2,
    proto3_optional: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.ResourceList
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.ResourceList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :memory, 1, proto3_optional: true, type: :string
  field :cpu, 2, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.TemplateLibraryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :installation, 2,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.TemplateLibraryConfig.Installation,
    enum: true
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.MonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backends, 1,
    repeated: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.MonitoringConfig.MonitoringBackend,
    enum: true
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.OnClusterState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.MembershipState.LifecycleState,
    enum: true

  field :details, 2, type: :string
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.BundleInstallSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :exempted_namespaces, 2, repeated: true, type: :string, json_name: "exemptedNamespaces"
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyContentSpec.BundlesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gkehub.Policycontroller.V1beta.BundleInstallSpec
end

defmodule Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyContentSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bundles, 1,
    repeated: true,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.PolicyContentSpec.BundlesEntry,
    map: true

  field :template_library, 2,
    type: Google.Cloud.Gkehub.Policycontroller.V1beta.TemplateLibraryConfig,
    json_name: "templateLibrary"
end
