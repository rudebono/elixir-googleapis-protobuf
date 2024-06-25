defmodule Google.Cloud.Bigquery.V2.ListRowAccessPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :table_id, 3, type: :string, json_name: "tableId", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :page_size, 5, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Bigquery.V2.ListRowAccessPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :row_access_policies, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.RowAccessPolicy,
    json_name: "rowAccessPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.V2.RowAccessPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :etag, 1, type: :string, deprecated: false

  field :row_access_policy_reference, 2,
    type: Google.Cloud.Bigquery.V2.RowAccessPolicyReference,
    json_name: "rowAccessPolicyReference",
    deprecated: false

  field :filter_predicate, 3, type: :string, json_name: "filterPredicate", deprecated: false

  field :creation_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "creationTime",
    deprecated: false

  field :last_modified_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "lastModifiedTime",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.RowAccessPolicyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.bigquery.v2.RowAccessPolicyService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListRowAccessPolicies,
      Google.Cloud.Bigquery.V2.ListRowAccessPoliciesRequest,
      Google.Cloud.Bigquery.V2.ListRowAccessPoliciesResponse
end

defmodule Google.Cloud.Bigquery.V2.RowAccessPolicyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Bigquery.V2.RowAccessPolicyService.Service
end