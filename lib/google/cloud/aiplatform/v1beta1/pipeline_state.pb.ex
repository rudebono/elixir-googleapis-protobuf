defmodule Google.Cloud.Aiplatform.V1beta1.PipelineState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PIPELINE_STATE_UNSPECIFIED
          | :PIPELINE_STATE_QUEUED
          | :PIPELINE_STATE_PENDING
          | :PIPELINE_STATE_RUNNING
          | :PIPELINE_STATE_SUCCEEDED
          | :PIPELINE_STATE_FAILED
          | :PIPELINE_STATE_CANCELLING
          | :PIPELINE_STATE_CANCELLED
          | :PIPELINE_STATE_PAUSED

  field :PIPELINE_STATE_UNSPECIFIED, 0

  field :PIPELINE_STATE_QUEUED, 1

  field :PIPELINE_STATE_PENDING, 2

  field :PIPELINE_STATE_RUNNING, 3

  field :PIPELINE_STATE_SUCCEEDED, 4

  field :PIPELINE_STATE_FAILED, 5

  field :PIPELINE_STATE_CANCELLING, 6

  field :PIPELINE_STATE_CANCELLED, 7

  field :PIPELINE_STATE_PAUSED, 8
end
