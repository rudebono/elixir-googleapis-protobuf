defmodule Google.Cloud.Aiplatform.V1.JobState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :JOB_STATE_UNSPECIFIED, 0
  field :JOB_STATE_QUEUED, 1
  field :JOB_STATE_PENDING, 2
  field :JOB_STATE_RUNNING, 3
  field :JOB_STATE_SUCCEEDED, 4
  field :JOB_STATE_FAILED, 5
  field :JOB_STATE_CANCELLING, 6
  field :JOB_STATE_CANCELLED, 7
  field :JOB_STATE_PAUSED, 8
  field :JOB_STATE_EXPIRED, 9
  field :JOB_STATE_UPDATING, 10
  field :JOB_STATE_PARTIALLY_SUCCEEDED, 11
end
