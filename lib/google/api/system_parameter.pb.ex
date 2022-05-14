defmodule Google.Api.SystemParameters do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Api.SystemParameterRule
end
defmodule Google.Api.SystemParameterRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :selector, 1, type: :string
  field :parameters, 2, repeated: true, type: Google.Api.SystemParameter
end
defmodule Google.Api.SystemParameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :http_header, 2, type: :string, json_name: "httpHeader"
  field :url_query_parameter, 3, type: :string, json_name: "urlQueryParameter"
end
