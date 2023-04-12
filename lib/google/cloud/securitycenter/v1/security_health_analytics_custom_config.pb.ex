defmodule Google.Cloud.Securitycenter.V1.CustomConfig.Severity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end

defmodule Google.Cloud.Securitycenter.V1.CustomConfig.CustomOutputSpec.Property do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :value_expression, 2, type: Google.Type.Expr, json_name: "valueExpression"
end

defmodule Google.Cloud.Securitycenter.V1.CustomConfig.CustomOutputSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :properties, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.CustomConfig.CustomOutputSpec.Property
end

defmodule Google.Cloud.Securitycenter.V1.CustomConfig.ResourceSelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_types, 1, repeated: true, type: :string, json_name: "resourceTypes"
end

defmodule Google.Cloud.Securitycenter.V1.CustomConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :predicate, 1, type: Google.Type.Expr

  field :custom_output, 2,
    type: Google.Cloud.Securitycenter.V1.CustomConfig.CustomOutputSpec,
    json_name: "customOutput"

  field :resource_selector, 3,
    type: Google.Cloud.Securitycenter.V1.CustomConfig.ResourceSelector,
    json_name: "resourceSelector"

  field :severity, 4, type: Google.Cloud.Securitycenter.V1.CustomConfig.Severity, enum: true
  field :description, 5, type: :string
  field :recommendation, 6, type: :string
end