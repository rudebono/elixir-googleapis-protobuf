defmodule Google.Cloud.Cloudcontrolspartner.V1.AccessReason.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CUSTOMER_INITIATED_SUPPORT, 1
  field :GOOGLE_INITIATED_SERVICE, 2
  field :GOOGLE_INITIATED_REVIEW, 3
  field :THIRD_PARTY_DATA_REQUEST, 4
  field :GOOGLE_RESPONSE_TO_PRODUCTION_ALERT, 5
  field :CLOUD_INITIATED_ACCESS, 6
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.AccessApprovalRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"

  field :requested_reason, 3,
    type: Google.Cloud.Cloudcontrolspartner.V1.AccessReason,
    json_name: "requestedReason"

  field :requested_expiration_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "requestedExpirationTime"
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.ListAccessApprovalRequestsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.ListAccessApprovalRequestsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :access_approval_requests, 1,
    repeated: true,
    type: Google.Cloud.Cloudcontrolspartner.V1.AccessApprovalRequest,
    json_name: "accessApprovalRequests"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.AccessReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Cloudcontrolspartner.V1.AccessReason.Type, enum: true
  field :detail, 2, type: :string
end
