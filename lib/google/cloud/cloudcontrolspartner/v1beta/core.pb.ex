defmodule Google.Cloud.Cloudcontrolspartner.V1beta.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.CloudControlsPartnerCore.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.cloudcontrolspartner.v1beta.CloudControlsPartnerCore",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetWorkload,
      Google.Cloud.Cloudcontrolspartner.V1beta.GetWorkloadRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.Workload

  rpc :ListWorkloads,
      Google.Cloud.Cloudcontrolspartner.V1beta.ListWorkloadsRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.ListWorkloadsResponse

  rpc :GetCustomer,
      Google.Cloud.Cloudcontrolspartner.V1beta.GetCustomerRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.Customer

  rpc :ListCustomers,
      Google.Cloud.Cloudcontrolspartner.V1beta.ListCustomersRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.ListCustomersResponse

  rpc :GetEkmConnections,
      Google.Cloud.Cloudcontrolspartner.V1beta.GetEkmConnectionsRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.EkmConnections

  rpc :GetPartnerPermissions,
      Google.Cloud.Cloudcontrolspartner.V1beta.GetPartnerPermissionsRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.PartnerPermissions

  rpc :ListAccessApprovalRequests,
      Google.Cloud.Cloudcontrolspartner.V1beta.ListAccessApprovalRequestsRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.ListAccessApprovalRequestsResponse

  rpc :GetPartner,
      Google.Cloud.Cloudcontrolspartner.V1beta.GetPartnerRequest,
      Google.Cloud.Cloudcontrolspartner.V1beta.Partner
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.CloudControlsPartnerCore.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Cloudcontrolspartner.V1beta.CloudControlsPartnerCore.Service
end