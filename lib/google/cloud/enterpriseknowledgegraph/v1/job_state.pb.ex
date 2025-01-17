defmodule Google.Cloud.Enterpriseknowledgegraph.V1.JobState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :JOB_STATE_UNSPECIFIED, 0
  field :JOB_STATE_PENDING, 9
  field :JOB_STATE_RUNNING, 1
  field :JOB_STATE_SUCCEEDED, 2
  field :JOB_STATE_FAILED, 3
  field :JOB_STATE_CANCELLED, 4
  field :JOB_STATE_KNOWLEDGE_EXTRACTION, 5
  field :JOB_STATE_RECON_PREPROCESSING, 6
  field :JOB_STATE_CLUSTERING, 7
  field :JOB_STATE_EXPORTING_CLUSTERS, 8
end
