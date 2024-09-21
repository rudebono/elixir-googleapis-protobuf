defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :condition, 0

  field :threshold, 1, type: :double, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAnomaly.TabularAnomaly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :anomaly_uri, 1, type: :string, json_name: "anomalyUri"
  field :summary, 2, type: :string
  field :anomaly, 3, type: Google.Protobuf.Value
  field :trigger_time, 4, type: Google.Protobuf.Timestamp, json_name: "triggerTime"
  field :condition, 5, type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertCondition
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAnomaly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :anomaly, 0

  field :tabular_anomaly, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAnomaly.TabularAnomaly,
    json_name: "tabularAnomaly",
    oneof: 0

  field :model_monitoring_job, 2, type: :string, json_name: "modelMonitoringJob"
  field :algorithm, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :stats_name, 1, type: :string, json_name: "statsName"
  field :objective_type, 2, type: :string, json_name: "objectiveType"
  field :alert_time, 3, type: Google.Protobuf.Timestamp, json_name: "alertTime"
  field :anomaly, 4, type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAnomaly
end