defmodule Google.Ads.Googleads.V11.Resources.Experiment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :experiment_id, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "experimentId",
    deprecated: false

  field :name, 10, type: :string, deprecated: false
  field :description, 11, type: :string
  field :suffix, 12, type: :string

  field :type, 13,
    type: Google.Ads.Googleads.V11.Enums.ExperimentTypeEnum.ExperimentType,
    enum: true

  field :status, 14,
    type: Google.Ads.Googleads.V11.Enums.ExperimentStatusEnum.ExperimentStatus,
    enum: true

  field :start_date, 15, proto3_optional: true, type: :string, json_name: "startDate"
  field :end_date, 16, proto3_optional: true, type: :string, json_name: "endDate"
  field :goals, 17, repeated: true, type: Google.Ads.Googleads.V11.Common.MetricGoal

  field :long_running_operation, 18,
    proto3_optional: true,
    type: :string,
    json_name: "longRunningOperation",
    deprecated: false

  field :promote_status, 19,
    type: Google.Ads.Googleads.V11.Enums.AsyncActionStatusEnum.AsyncActionStatus,
    json_name: "promoteStatus",
    enum: true,
    deprecated: false
end