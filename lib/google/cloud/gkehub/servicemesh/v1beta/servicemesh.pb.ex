defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipSpec.ControlPlaneManagement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONTROL_PLANE_MANAGEMENT_UNSPECIFIED, 0
  field :AUTOMATIC, 1
  field :MANUAL, 2
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipSpec.Management do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MANAGEMENT_UNSPECIFIED, 0
  field :MANAGEMENT_AUTOMATIC, 1
  field :MANAGEMENT_MANUAL, 2
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.LifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LIFECYCLE_STATE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :FAILED_PRECONDITION, 2
  field :PROVISIONING, 3
  field :ACTIVE, 4
  field :STALLED, 5
  field :NEEDS_ATTENTION, 6
  field :DEGRADED, 7
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.ControlPlaneManagement.Implementation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :IMPLEMENTATION_UNSPECIFIED, 0
  field :ISTIOD, 1
  field :TRAFFIC_DIRECTOR, 2
  field :UPDATING, 3
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.Condition.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CODE_UNSPECIFIED, 0
  field :MESH_IAM_PERMISSION_DENIED, 100
  field :CNI_CONFIG_UNSUPPORTED, 201
  field :GKE_SANDBOX_UNSUPPORTED, 202
  field :NODEPOOL_WORKLOAD_IDENTITY_FEDERATION_REQUIRED, 203
  field :CNI_INSTALLATION_FAILED, 204
  field :CNI_POD_UNSCHEDULABLE, 205
  field :UNSUPPORTED_MULTIPLE_CONTROL_PLANES, 301
  field :VPCSC_GA_SUPPORTED, 302
  field :CONFIG_APPLY_INTERNAL_ERROR, 401
  field :CONFIG_VALIDATION_ERROR, 402
  field :CONFIG_VALIDATION_WARNING, 403
  field :QUOTA_EXCEEDED_BACKEND_SERVICES, 404
  field :QUOTA_EXCEEDED_HEALTH_CHECKS, 405
  field :QUOTA_EXCEEDED_HTTP_ROUTES, 406
  field :QUOTA_EXCEEDED_TCP_ROUTES, 407
  field :QUOTA_EXCEEDED_TLS_ROUTES, 408
  field :QUOTA_EXCEEDED_TRAFFIC_POLICIES, 409
  field :QUOTA_EXCEEDED_ENDPOINT_POLICIES, 410
  field :QUOTA_EXCEEDED_GATEWAYS, 411
  field :QUOTA_EXCEEDED_MESHES, 412
  field :QUOTA_EXCEEDED_SERVER_TLS_POLICIES, 413
  field :QUOTA_EXCEEDED_CLIENT_TLS_POLICIES, 414
  field :QUOTA_EXCEEDED_SERVICE_LB_POLICIES, 415
  field :QUOTA_EXCEEDED_HTTP_FILTERS, 416
  field :QUOTA_EXCEEDED_TCP_FILTERS, 417
  field :QUOTA_EXCEEDED_NETWORK_ENDPOINT_GROUPS, 418
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.Condition.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :ERROR, 1
  field :WARNING, 2
  field :INFO, 3
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :control_plane, 1,
    type: Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipSpec.ControlPlaneManagement,
    json_name: "controlPlane",
    enum: true,
    deprecated: true

  field :management, 4,
    type: Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipSpec.Management,
    enum: true
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.ControlPlaneManagement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :details, 2, repeated: true, type: Google.Cloud.Gkehub.Servicemesh.V1beta.StatusDetails

  field :state, 3,
    type: Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.LifecycleState,
    enum: true

  field :implementation, 4,
    type:
      Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.ControlPlaneManagement.Implementation,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.DataPlaneManagement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.LifecycleState,
    enum: true

  field :details, 2, repeated: true, type: Google.Cloud.Gkehub.Servicemesh.V1beta.StatusDetails
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :code, 1,
    type: Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.Condition.Code,
    enum: true

  field :documentation_link, 2, type: :string, json_name: "documentationLink"
  field :details, 3, type: :string

  field :severity, 4,
    type: Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.Condition.Severity,
    enum: true
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :control_plane_management, 2,
    type: Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.ControlPlaneManagement,
    json_name: "controlPlaneManagement",
    deprecated: false

  field :data_plane_management, 4,
    type: Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.DataPlaneManagement,
    json_name: "dataPlaneManagement",
    deprecated: false

  field :conditions, 8,
    repeated: true,
    type: Google.Cloud.Gkehub.Servicemesh.V1beta.MembershipState.Condition,
    deprecated: false
end

defmodule Google.Cloud.Gkehub.Servicemesh.V1beta.StatusDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :code, 1, type: :string
  field :details, 2, type: :string
end