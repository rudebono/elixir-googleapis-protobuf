defmodule Google.Cloud.Aiplatform.V1.PipelineFailurePolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PIPELINE_FAILURE_POLICY_UNSPECIFIED, 0
  field :PIPELINE_FAILURE_POLICY_FAIL_SLOW, 1
  field :PIPELINE_FAILURE_POLICY_FAIL_FAST, 2
end