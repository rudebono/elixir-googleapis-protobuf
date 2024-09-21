defmodule Google.Cloud.Networkmanagement.V1.ListConnectivityTestsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkmanagement.V1.ListConnectivityTestsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resources, 1, repeated: true, type: Google.Cloud.Networkmanagement.V1.ConnectivityTest
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1.GetConnectivityTestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1.CreateConnectivityTestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :test_id, 2, type: :string, json_name: "testId", deprecated: false
  field :resource, 3, type: Google.Cloud.Networkmanagement.V1.ConnectivityTest, deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1.UpdateConnectivityTestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :resource, 2, type: Google.Cloud.Networkmanagement.V1.ConnectivityTest, deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1.DeleteConnectivityTestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1.RerunConnectivityTestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string, json_name: "statusDetail"
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested"
  field :api_version, 7, type: :string, json_name: "apiVersion"
end

defmodule Google.Cloud.Networkmanagement.V1.ReachabilityService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networkmanagement.v1.ReachabilityService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListConnectivityTests,
      Google.Cloud.Networkmanagement.V1.ListConnectivityTestsRequest,
      Google.Cloud.Networkmanagement.V1.ListConnectivityTestsResponse

  rpc :GetConnectivityTest,
      Google.Cloud.Networkmanagement.V1.GetConnectivityTestRequest,
      Google.Cloud.Networkmanagement.V1.ConnectivityTest

  rpc :CreateConnectivityTest,
      Google.Cloud.Networkmanagement.V1.CreateConnectivityTestRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnectivityTest,
      Google.Cloud.Networkmanagement.V1.UpdateConnectivityTestRequest,
      Google.Longrunning.Operation

  rpc :RerunConnectivityTest,
      Google.Cloud.Networkmanagement.V1.RerunConnectivityTestRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnectivityTest,
      Google.Cloud.Networkmanagement.V1.DeleteConnectivityTestRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkmanagement.V1.ReachabilityService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networkmanagement.V1.ReachabilityService.Service
end