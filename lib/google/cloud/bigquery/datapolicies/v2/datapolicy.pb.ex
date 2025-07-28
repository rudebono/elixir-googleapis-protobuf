defmodule Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy.DataPolicyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATA_POLICY_TYPE_UNSPECIFIED, 0
  field :DATA_MASKING_POLICY, 1
  field :RAW_DATA_ACCESS_POLICY, 2
  field :COLUMN_LEVEL_SECURITY_POLICY, 3
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy.Version do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VERSION_UNSPECIFIED, 0
  field :V1, 1
  field :V2, 2
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.DataMaskingPolicy.PredefinedExpression do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PREDEFINED_EXPRESSION_UNSPECIFIED, 0
  field :SHA256, 1
  field :ALWAYS_NULL, 2
  field :DEFAULT_MASKING_VALUE, 3
  field :LAST_FOUR_CHARACTERS, 4
  field :FIRST_FOUR_CHARACTERS, 5
  field :EMAIL_MASK, 6
  field :DATE_YEAR_MASK, 7
  field :RANDOM_HASH, 8
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.CreateDataPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :data_policy_id, 2, type: :string, json_name: "dataPolicyId", deprecated: false

  field :data_policy, 3,
    type: Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy,
    json_name: "dataPolicy",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.UpdateDataPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_policy, 1,
    type: Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy,
    json_name: "dataPolicy",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.AddGranteesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_policy, 1, type: :string, json_name: "dataPolicy", deprecated: false
  field :grantees, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.RemoveGranteesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_policy, 1, type: :string, json_name: "dataPolicy", deprecated: false
  field :grantees, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.DeleteDataPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.GetDataPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.ListDataPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.ListDataPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_policies, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy,
    json_name: "dataPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :policy, 0

  field :data_masking_policy, 7,
    type: Google.Cloud.Bigquery.Datapolicies.V2.DataMaskingPolicy,
    json_name: "dataMaskingPolicy",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :data_policy_id, 2, type: :string, json_name: "dataPolicyId", deprecated: false
  field :etag, 11, proto3_optional: true, type: :string

  field :data_policy_type, 3,
    type: Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy.DataPolicyType,
    json_name: "dataPolicyType",
    enum: true,
    deprecated: false

  field :policy_tag, 4, type: :string, json_name: "policyTag", deprecated: false
  field :grantees, 8, repeated: true, type: :string, deprecated: false

  field :version, 9,
    type: Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy.Version,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.DataMaskingPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :masking_expression, 0

  field :predefined_expression, 1,
    type: Google.Cloud.Bigquery.Datapolicies.V2.DataMaskingPolicy.PredefinedExpression,
    json_name: "predefinedExpression",
    enum: true,
    oneof: 0,
    deprecated: false

  field :routine, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.DataPolicyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.bigquery.datapolicies.v2.DataPolicyService",
  
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateDataPolicy,
      Google.Cloud.Bigquery.Datapolicies.V2.CreateDataPolicyRequest,
      Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy

  rpc :AddGrantees,
      Google.Cloud.Bigquery.Datapolicies.V2.AddGranteesRequest,
      Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy

  rpc :RemoveGrantees,
      Google.Cloud.Bigquery.Datapolicies.V2.RemoveGranteesRequest,
      Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy

  rpc :UpdateDataPolicy,
      Google.Cloud.Bigquery.Datapolicies.V2.UpdateDataPolicyRequest,
      Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy

  rpc :DeleteDataPolicy,
      Google.Cloud.Bigquery.Datapolicies.V2.DeleteDataPolicyRequest,
      Google.Protobuf.Empty

  rpc :GetDataPolicy,
      Google.Cloud.Bigquery.Datapolicies.V2.GetDataPolicyRequest,
      Google.Cloud.Bigquery.Datapolicies.V2.DataPolicy

  rpc :ListDataPolicies,
      Google.Cloud.Bigquery.Datapolicies.V2.ListDataPoliciesRequest,
      Google.Cloud.Bigquery.Datapolicies.V2.ListDataPoliciesResponse

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Bigquery.Datapolicies.V2.DataPolicyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Bigquery.Datapolicies.V2.DataPolicyService.Service
end
