defmodule Google.Monitoring.V3.CreateAlertPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false

  field :alert_policy, 2,
    type: Google.Monitoring.V3.AlertPolicy,
    json_name: "alertPolicy",
    deprecated: false
end

defmodule Google.Monitoring.V3.GetAlertPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.ListAlertPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 4, type: :string, deprecated: false
  field :filter, 5, type: :string, deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Monitoring.V3.ListAlertPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :alert_policies, 3,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy,
    json_name: "alertPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end

defmodule Google.Monitoring.V3.UpdateAlertPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :alert_policy, 3,
    type: Google.Monitoring.V3.AlertPolicy,
    json_name: "alertPolicy",
    deprecated: false
end

defmodule Google.Monitoring.V3.DeleteAlertPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.AlertPolicyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.monitoring.v3.AlertPolicyService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListAlertPolicies,
      Google.Monitoring.V3.ListAlertPoliciesRequest,
      Google.Monitoring.V3.ListAlertPoliciesResponse

  rpc :GetAlertPolicy,
      Google.Monitoring.V3.GetAlertPolicyRequest,
      Google.Monitoring.V3.AlertPolicy

  rpc :CreateAlertPolicy,
      Google.Monitoring.V3.CreateAlertPolicyRequest,
      Google.Monitoring.V3.AlertPolicy

  rpc :DeleteAlertPolicy, Google.Monitoring.V3.DeleteAlertPolicyRequest, Google.Protobuf.Empty

  rpc :UpdateAlertPolicy,
      Google.Monitoring.V3.UpdateAlertPolicyRequest,
      Google.Monitoring.V3.AlertPolicy
end

defmodule Google.Monitoring.V3.AlertPolicyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Monitoring.V3.AlertPolicyService.Service
end
