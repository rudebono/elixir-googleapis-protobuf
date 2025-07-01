defmodule Google.Cloud.Securitycenter.V2.Process do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :binary, 2, type: Google.Cloud.Securitycenter.V2.File
  field :libraries, 3, repeated: true, type: Google.Cloud.Securitycenter.V2.File
  field :script, 4, type: Google.Cloud.Securitycenter.V2.File
  field :args, 5, repeated: true, type: :string
  field :arguments_truncated, 6, type: :bool, json_name: "argumentsTruncated"

  field :env_variables, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.EnvironmentVariable,
    json_name: "envVariables"

  field :env_variables_truncated, 8, type: :bool, json_name: "envVariablesTruncated"
  field :pid, 9, type: :int64
  field :parent_pid, 10, type: :int64, json_name: "parentPid"
  field :user_id, 11, type: :int64, json_name: "userId"
end

defmodule Google.Cloud.Securitycenter.V2.EnvironmentVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :val, 2, type: :string
end
