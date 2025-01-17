defmodule Google.Cloud.Visionai.V1alpha1.Analysis.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Analysis.InputStreamsMappingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Analysis.OutputStreamsMappingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1alpha1.Analysis do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Analysis.LabelsEntry,
    map: true

  field :analysis_definition, 5,
    type: Google.Cloud.Visionai.V1alpha1.AnalysisDefinition,
    json_name: "analysisDefinition"

  field :input_streams_mapping, 6,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Analysis.InputStreamsMappingEntry,
    json_name: "inputStreamsMapping",
    map: true

  field :output_streams_mapping, 7,
    repeated: true,
    type: Google.Cloud.Visionai.V1alpha1.Analysis.OutputStreamsMappingEntry,
    json_name: "outputStreamsMapping",
    map: true
end
