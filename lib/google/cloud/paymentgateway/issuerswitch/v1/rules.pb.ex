defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.RuleMetadata.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :LIST, 1
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.Rule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :rule_description, 2, type: :string, json_name: "ruleDescription"

  field :api_type, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.ApiType,
    json_name: "apiType",
    enum: true

  field :transaction_type, 4,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.TransactionType,
    json_name: "transactionType",
    enum: true
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.RuleMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :type, 3, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RuleMetadata.Type, enum: true
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.RuleMetadataValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value, 0

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, oneof: 0

  field :account_reference, 3,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.AccountReference,
    json_name: "accountReference",
    oneof: 0
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Cloud.Paymentgateway.Issuerswitch.V1.Rule
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRuleMetadataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRuleMetadataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rule_metadata, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RuleMetadata,
    json_name: "ruleMetadata"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int64, json_name: "totalSize"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRuleMetadataValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRuleMetadataValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rule_metadata_values, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RuleMetadataValue,
    json_name: "ruleMetadataValues"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.BatchCreateRuleMetadataValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.CreateRuleMetadataValueRequest,
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.BatchCreateRuleMetadataValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rule_metadata_value, 1,
    repeated: true,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RuleMetadataValue,
    json_name: "ruleMetadataValue"
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.CreateRuleMetadataValueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :rule_metadata_value, 2,
    type: Google.Cloud.Paymentgateway.Issuerswitch.V1.RuleMetadataValue,
    json_name: "ruleMetadataValue",
    deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.BatchDeleteRuleMetadataValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchRules.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.paymentgateway.issuerswitch.v1.IssuerSwitchRules",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListRules,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRulesRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRulesResponse

  rpc :ListRuleMetadata,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRuleMetadataRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRuleMetadataResponse

  rpc :ListRuleMetadataValues,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRuleMetadataValuesRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.ListRuleMetadataValuesResponse

  rpc :BatchCreateRuleMetadataValues,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.BatchCreateRuleMetadataValuesRequest,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.BatchCreateRuleMetadataValuesResponse

  rpc :BatchDeleteRuleMetadataValues,
      Google.Cloud.Paymentgateway.Issuerswitch.V1.BatchDeleteRuleMetadataValuesRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchRules.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Paymentgateway.Issuerswitch.V1.IssuerSwitchRules.Service
end
