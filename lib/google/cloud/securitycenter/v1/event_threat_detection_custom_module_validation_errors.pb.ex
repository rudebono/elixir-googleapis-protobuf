defmodule Google.Cloud.Securitycenter.V1.CustomModuleValidationErrors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :errors, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.CustomModuleValidationError
end

defmodule Google.Cloud.Securitycenter.V1.CustomModuleValidationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :description, 1, type: :string
  field :field_path, 2, type: :string, json_name: "fieldPath"
  field :start, 3, proto3_optional: true, type: Google.Cloud.Securitycenter.V1.Position
  field :end, 4, proto3_optional: true, type: Google.Cloud.Securitycenter.V1.Position
end

defmodule Google.Cloud.Securitycenter.V1.Position do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :line_number, 1, type: :int32, json_name: "lineNumber"
  field :column_number, 2, type: :int32, json_name: "columnNumber"
end
