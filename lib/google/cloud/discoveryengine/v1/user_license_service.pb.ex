defmodule Google.Cloud.Discoveryengine.V1.ListUserLicensesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListUserLicensesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_licenses, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.UserLicense,
    json_name: "userLicenses"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.BatchUpdateUserLicensesRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_licenses, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.UserLicense,
    json_name: "userLicenses",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.BatchUpdateUserLicensesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1.BatchUpdateUserLicensesRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :delete_unassigned_user_licenses, 4,
    type: :bool,
    json_name: "deleteUnassignedUserLicenses",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.BatchUpdateUserLicensesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
end

defmodule Google.Cloud.Discoveryengine.V1.BatchUpdateUserLicensesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_licenses, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.UserLicense,
    json_name: "userLicenses"

  field :error_samples, 2, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
end

defmodule Google.Cloud.Discoveryengine.V1.UserLicenseService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.UserLicenseService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListUserLicenses,
      Google.Cloud.Discoveryengine.V1.ListUserLicensesRequest,
      Google.Cloud.Discoveryengine.V1.ListUserLicensesResponse

  rpc :BatchUpdateUserLicenses,
      Google.Cloud.Discoveryengine.V1.BatchUpdateUserLicensesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1.UserLicenseService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.UserLicenseService.Service
end
