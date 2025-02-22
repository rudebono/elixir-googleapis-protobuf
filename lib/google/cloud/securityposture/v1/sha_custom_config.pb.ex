defmodule Google.Cloud.Securityposture.V1.CustomConfig.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end

defmodule Google.Cloud.Securityposture.V1.CustomConfig.CustomOutputSpec.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :value_expression, 2,
    type: Google.Type.Expr,
    json_name: "valueExpression",
    deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.CustomConfig.CustomOutputSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :properties, 1,
    repeated: true,
    type: Google.Cloud.Securityposture.V1.CustomConfig.CustomOutputSpec.Property,
    deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.CustomConfig.ResourceSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_types, 1,
    repeated: true,
    type: :string,
    json_name: "resourceTypes",
    deprecated: false
end

defmodule Google.Cloud.Securityposture.V1.CustomConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :predicate, 1, type: Google.Type.Expr, deprecated: false

  field :custom_output, 2,
    type: Google.Cloud.Securityposture.V1.CustomConfig.CustomOutputSpec,
    json_name: "customOutput",
    deprecated: false

  field :resource_selector, 3,
    type: Google.Cloud.Securityposture.V1.CustomConfig.ResourceSelector,
    json_name: "resourceSelector",
    deprecated: false

  field :severity, 4,
    type: Google.Cloud.Securityposture.V1.CustomConfig.Severity,
    enum: true,
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :recommendation, 6, type: :string, deprecated: false
end
