defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitor.ModelMonitoringTarget.VertexModelSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :model_version_id, 2, type: :string, json_name: "modelVersionId"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitor.ModelMonitoringTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :vertex_model, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitor.ModelMonitoringTarget.VertexModelSource,
    json_name: "vertexModel",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :default_objective, 0

  field :tabular_objective, 11,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveSpec.TabularObjective,
    json_name: "tabularObjective",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :model_monitoring_target, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitor.ModelMonitoringTarget,
    json_name: "modelMonitoringTarget"

  field :training_dataset, 10,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringInput,
    json_name: "trainingDataset"

  field :notification_spec, 12,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringNotificationSpec,
    json_name: "notificationSpec"

  field :output_spec, 13,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringOutputSpec,
    json_name: "outputSpec"

  field :explanation_spec, 16,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpec,
    json_name: "explanationSpec"

  field :model_monitoring_schema, 9,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringSchema,
    json_name: "modelMonitoringSchema"

  field :encryption_spec, 5,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :satisfies_pzs, 17, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 18, type: :bool, json_name: "satisfiesPzi", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringSchema.FieldSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :data_type, 2, type: :string, json_name: "dataType"
  field :repeated, 3, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :feature_fields, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringSchema.FieldSchema,
    json_name: "featureFields"

  field :prediction_fields, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringSchema.FieldSchema,
    json_name: "predictionFields"

  field :ground_truth_fields, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringSchema.FieldSchema,
    json_name: "groundTruthFields"
end
