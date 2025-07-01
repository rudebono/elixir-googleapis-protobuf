defmodule Google.Cloud.Securitycenter.V2.JobState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :JOB_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Securitycenter.V2.Job do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Securitycenter.V2.JobState, enum: true, deprecated: false
  field :error_code, 3, type: :int32, json_name: "errorCode"
  field :location, 4, type: :string
end
