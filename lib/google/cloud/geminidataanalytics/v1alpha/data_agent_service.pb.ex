defmodule Google.Cloud.Geminidataanalytics.V1alpha.ListAccessibleDataAgentsRequest.CreatorFilter do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CREATOR_FILTER_UNSPECIFIED, 0
  field :NONE, 1
  field :CREATOR_ONLY, 2
  field :NOT_CREATOR_ONLY, 3
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ListDataAgentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :show_deleted, 6, type: :bool, json_name: "showDeleted", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ListDataAgentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_agents, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DataAgent,
    json_name: "dataAgents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ListAccessibleDataAgentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :show_deleted, 6, type: :bool, json_name: "showDeleted", deprecated: false

  field :creator_filter, 7,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ListAccessibleDataAgentsRequest.CreatorFilter,
    json_name: "creatorFilter",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ListAccessibleDataAgentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_agents, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DataAgent,
    json_name: "dataAgents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.GetDataAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.CreateDataAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :data_agent_id, 2, type: :string, json_name: "dataAgentId", deprecated: false

  field :data_agent, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DataAgent,
    json_name: "dataAgent",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.UpdateDataAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :data_agent, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DataAgent,
    json_name: "dataAgent",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DeleteDataAgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataAgentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.geminidataanalytics.v1alpha.DataAgentService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListDataAgents,
      Google.Cloud.Geminidataanalytics.V1alpha.ListDataAgentsRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.ListDataAgentsResponse

  rpc :ListAccessibleDataAgents,
      Google.Cloud.Geminidataanalytics.V1alpha.ListAccessibleDataAgentsRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.ListAccessibleDataAgentsResponse

  rpc :GetDataAgent,
      Google.Cloud.Geminidataanalytics.V1alpha.GetDataAgentRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.DataAgent

  rpc :CreateDataAgent,
      Google.Cloud.Geminidataanalytics.V1alpha.CreateDataAgentRequest,
      Google.Longrunning.Operation

  rpc :UpdateDataAgent,
      Google.Cloud.Geminidataanalytics.V1alpha.UpdateDataAgentRequest,
      Google.Longrunning.Operation

  rpc :DeleteDataAgent,
      Google.Cloud.Geminidataanalytics.V1alpha.DeleteDataAgentRequest,
      Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataAgentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Geminidataanalytics.V1alpha.DataAgentService.Service
end
