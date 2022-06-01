defmodule Google.Cloud.Securitycenter.V1.Process do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :binary, 3, type: Google.Cloud.Securitycenter.V1.File
  field :libraries, 4, repeated: true, type: Google.Cloud.Securitycenter.V1.File
  field :script, 5, type: Google.Cloud.Securitycenter.V1.File
  field :args, 6, repeated: true, type: :string
  field :arguments_truncated, 7, type: :bool, json_name: "argumentsTruncated"

  field :env_variables, 8,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.EnvironmentVariable,
    json_name: "envVariables"

  field :env_variables_truncated, 9, type: :bool, json_name: "envVariablesTruncated"
  field :pid, 10, type: :int64
  field :parent_pid, 11, type: :int64, json_name: "parentPid"
end
defmodule Google.Cloud.Securitycenter.V1.EnvironmentVariable do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :val, 2, type: :string
end
