defmodule Google.Cloud.Cloudcontrolspartner.V1.OperationMetadata do
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

defmodule Google.Cloud.Cloudcontrolspartner.V1.CloudControlsPartnerCore.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.cloudcontrolspartner.v1.CloudControlsPartnerCore",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetWorkload,
      Google.Cloud.Cloudcontrolspartner.V1.GetWorkloadRequest,
      Google.Cloud.Cloudcontrolspartner.V1.Workload

  rpc :ListWorkloads,
      Google.Cloud.Cloudcontrolspartner.V1.ListWorkloadsRequest,
      Google.Cloud.Cloudcontrolspartner.V1.ListWorkloadsResponse

  rpc :GetCustomer,
      Google.Cloud.Cloudcontrolspartner.V1.GetCustomerRequest,
      Google.Cloud.Cloudcontrolspartner.V1.Customer

  rpc :ListCustomers,
      Google.Cloud.Cloudcontrolspartner.V1.ListCustomersRequest,
      Google.Cloud.Cloudcontrolspartner.V1.ListCustomersResponse

  rpc :GetEkmConnections,
      Google.Cloud.Cloudcontrolspartner.V1.GetEkmConnectionsRequest,
      Google.Cloud.Cloudcontrolspartner.V1.EkmConnections

  rpc :GetPartnerPermissions,
      Google.Cloud.Cloudcontrolspartner.V1.GetPartnerPermissionsRequest,
      Google.Cloud.Cloudcontrolspartner.V1.PartnerPermissions

  rpc :ListAccessApprovalRequests,
      Google.Cloud.Cloudcontrolspartner.V1.ListAccessApprovalRequestsRequest,
      Google.Cloud.Cloudcontrolspartner.V1.ListAccessApprovalRequestsResponse

  rpc :GetPartner,
      Google.Cloud.Cloudcontrolspartner.V1.GetPartnerRequest,
      Google.Cloud.Cloudcontrolspartner.V1.Partner

  rpc :CreateCustomer,
      Google.Cloud.Cloudcontrolspartner.V1.CreateCustomerRequest,
      Google.Cloud.Cloudcontrolspartner.V1.Customer

  rpc :UpdateCustomer,
      Google.Cloud.Cloudcontrolspartner.V1.UpdateCustomerRequest,
      Google.Cloud.Cloudcontrolspartner.V1.Customer

  rpc :DeleteCustomer,
      Google.Cloud.Cloudcontrolspartner.V1.DeleteCustomerRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.CloudControlsPartnerCore.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Cloudcontrolspartner.V1.CloudControlsPartnerCore.Service
end
