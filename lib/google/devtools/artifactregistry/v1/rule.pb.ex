defmodule Google.Devtools.Artifactregistry.V1.Rule.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Devtools.Artifactregistry.V1.Rule.Operation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATION_UNSPECIFIED, 0
  field :DOWNLOAD, 1
end

defmodule Google.Devtools.Artifactregistry.V1.Rule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :action, 2, type: Google.Devtools.Artifactregistry.V1.Rule.Action, enum: true
  field :operation, 3, type: Google.Devtools.Artifactregistry.V1.Rule.Operation, enum: true
  field :condition, 4, type: Google.Type.Expr, deprecated: false
  field :package_id, 5, type: :string, json_name: "packageId"
end

defmodule Google.Devtools.Artifactregistry.V1.ListRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.ListRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1.Rule
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.GetRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.CreateRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :rule_id, 2, type: :string, json_name: "ruleId"
  field :rule, 3, type: Google.Devtools.Artifactregistry.V1.Rule
end

defmodule Google.Devtools.Artifactregistry.V1.UpdateRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rule, 1, type: Google.Devtools.Artifactregistry.V1.Rule
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Devtools.Artifactregistry.V1.DeleteRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
