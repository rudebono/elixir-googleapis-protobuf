defmodule Google.Cloud.Aiplatform.V1beta1.JobState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :JOB_STATE_UNSPECIFIED
          | :JOB_STATE_QUEUED
          | :JOB_STATE_PENDING
          | :JOB_STATE_RUNNING
          | :JOB_STATE_SUCCEEDED
          | :JOB_STATE_FAILED
          | :JOB_STATE_CANCELLING
          | :JOB_STATE_CANCELLED
          | :JOB_STATE_PAUSED
          | :JOB_STATE_EXPIRED
          | :JOB_STATE_UPDATING

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
end
