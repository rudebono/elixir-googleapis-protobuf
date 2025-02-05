defmodule Google.Cloud.Run.V2.CreateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :service, 2, type: Google.Cloud.Run.V2.Service, deprecated: false
  field :service_id, 3, type: :string, json_name: "serviceId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Run.V2.UpdateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :service, 1, type: Google.Cloud.Run.V2.Service, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Run.V2.ListServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Cloud.Run.V2.ListServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Cloud.Run.V2.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Run.V2.GetServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.DeleteServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :etag, 3, type: :string
end

defmodule Google.Cloud.Run.V2.Service.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Service.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Run.V2.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :uid, 3, type: :string, deprecated: false
  field :generation, 4, type: :int64, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Run.V2.Service.LabelsEntry,
    map: true,
    deprecated: false

  field :annotations, 6,
    repeated: true,
    type: Google.Cloud.Run.V2.Service.AnnotationsEntry,
    map: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :creator, 11, type: :string, deprecated: false
  field :last_modifier, 12, type: :string, json_name: "lastModifier", deprecated: false
  field :client, 13, type: :string
  field :client_version, 14, type: :string, json_name: "clientVersion"
  field :ingress, 15, type: Google.Cloud.Run.V2.IngressTraffic, enum: true, deprecated: false

  field :launch_stage, 16,
    type: Google.Api.LaunchStage,
    json_name: "launchStage",
    enum: true,
    deprecated: false

  field :binary_authorization, 17,
    type: Google.Cloud.Run.V2.BinaryAuthorization,
    json_name: "binaryAuthorization",
    deprecated: false

  field :template, 18, type: Google.Cloud.Run.V2.RevisionTemplate, deprecated: false
  field :traffic, 19, repeated: true, type: Google.Cloud.Run.V2.TrafficTarget, deprecated: false
  field :scaling, 20, type: Google.Cloud.Run.V2.ServiceScaling, deprecated: false
  field :invoker_iam_disabled, 21, type: :bool, json_name: "invokerIamDisabled", deprecated: false
  field :default_uri_disabled, 22, type: :bool, json_name: "defaultUriDisabled", deprecated: false
  field :urls, 24, repeated: true, type: :string, deprecated: false
  field :custom_audiences, 37, repeated: true, type: :string, json_name: "customAudiences"
  field :observed_generation, 30, type: :int64, json_name: "observedGeneration", deprecated: false

  field :terminal_condition, 31,
    type: Google.Cloud.Run.V2.Condition,
    json_name: "terminalCondition",
    deprecated: false

  field :conditions, 32, repeated: true, type: Google.Cloud.Run.V2.Condition, deprecated: false

  field :latest_ready_revision, 33,
    type: :string,
    json_name: "latestReadyRevision",
    deprecated: false

  field :latest_created_revision, 34,
    type: :string,
    json_name: "latestCreatedRevision",
    deprecated: false

  field :traffic_statuses, 35,
    repeated: true,
    type: Google.Cloud.Run.V2.TrafficTargetStatus,
    json_name: "trafficStatuses",
    deprecated: false

  field :uri, 36, type: :string, deprecated: false
  field :satisfies_pzs, 38, type: :bool, json_name: "satisfiesPzs", deprecated: false

  field :build_config, 41,
    type: Google.Cloud.Run.V2.BuildConfig,
    json_name: "buildConfig",
    deprecated: false

  field :reconciling, 98, type: :bool, deprecated: false
  field :etag, 99, type: :string, deprecated: false
end

defmodule Google.Cloud.Run.V2.Services.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.run.v2.Services", protoc_gen_elixir_version: "0.14.0"

  rpc :CreateService, Google.Cloud.Run.V2.CreateServiceRequest, Google.Longrunning.Operation

  rpc :GetService, Google.Cloud.Run.V2.GetServiceRequest, Google.Cloud.Run.V2.Service

  rpc :ListServices,
      Google.Cloud.Run.V2.ListServicesRequest,
      Google.Cloud.Run.V2.ListServicesResponse

  rpc :UpdateService, Google.Cloud.Run.V2.UpdateServiceRequest, Google.Longrunning.Operation

  rpc :DeleteService, Google.Cloud.Run.V2.DeleteServiceRequest, Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Run.V2.Services.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Run.V2.Services.Service
end
