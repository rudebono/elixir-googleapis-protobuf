defmodule Google.Cloud.Cloudcontrolspartner.V1beta.Workload.Partner do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PARTNER_UNSPECIFIED, 0
  field :PARTNER_LOCAL_CONTROLS_BY_S3NS, 1
  field :PARTNER_SOVEREIGN_CONTROLS_BY_T_SYSTEMS, 2
  field :PARTNER_SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, 3
  field :PARTNER_SOVEREIGN_CONTROLS_BY_PSN, 4
  field :PARTNER_SOVEREIGN_CONTROLS_BY_CNTXT, 6
  field :PARTNER_SOVEREIGN_CONTROLS_BY_CNTXT_NO_EKM, 7
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.WorkloadOnboardingStep.Step do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STEP_UNSPECIFIED, 0
  field :EKM_PROVISIONED, 1
  field :SIGNED_ACCESS_APPROVAL_CONFIGURED, 2
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.Workload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :folder_id, 2, type: :int64, json_name: "folderId", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :folder, 4, type: :string, deprecated: false

  field :workload_onboarding_state, 5,
    type: Google.Cloud.Cloudcontrolspartner.V1beta.WorkloadOnboardingState,
    json_name: "workloadOnboardingState"

  field :is_onboarded, 6, type: :bool, json_name: "isOnboarded"
  field :key_management_project_id, 7, type: :string, json_name: "keyManagementProjectId"
  field :location, 8, type: :string
  field :partner, 9, type: Google.Cloud.Cloudcontrolspartner.V1beta.Workload.Partner, enum: true
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.ListWorkloadsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.ListWorkloadsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workloads, 1, repeated: true, type: Google.Cloud.Cloudcontrolspartner.V1beta.Workload
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.GetWorkloadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.WorkloadOnboardingState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :onboarding_steps, 1,
    repeated: true,
    type: Google.Cloud.Cloudcontrolspartner.V1beta.WorkloadOnboardingStep,
    json_name: "onboardingSteps"
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.WorkloadOnboardingStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :step, 1,
    type: Google.Cloud.Cloudcontrolspartner.V1beta.WorkloadOnboardingStep.Step,
    enum: true

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :completion_time, 3, type: Google.Protobuf.Timestamp, json_name: "completionTime"

  field :completion_state, 4,
    type: Google.Cloud.Cloudcontrolspartner.V1beta.CompletionState,
    json_name: "completionState",
    enum: true,
    deprecated: false
end
