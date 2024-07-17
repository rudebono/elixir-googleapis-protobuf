defmodule Google.Cloud.Discoveryengine.V1alpha.Evaluation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Evaluation.EvaluationSpec.QuerySetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sample_query_set, 1, type: :string, json_name: "sampleQuerySet", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Evaluation.EvaluationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :search_spec, 0

  field :search_request, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchRequest,
    json_name: "searchRequest",
    oneof: 0,
    deprecated: false

  field :query_set_spec, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.Evaluation.EvaluationSpec.QuerySetSpec,
    json_name: "querySetSpec",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Evaluation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :evaluation_spec, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.Evaluation.EvaluationSpec,
    json_name: "evaluationSpec",
    deprecated: false

  field :quality_metrics, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.QualityMetrics,
    json_name: "qualityMetrics",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.Evaluation.State,
    enum: true,
    deprecated: false

  field :error, 5, type: Google.Rpc.Status, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :error_samples, 8,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "errorSamples",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.QualityMetrics.TopkMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :top_1, 1, type: :double, json_name: "top1"
  field :top_3, 2, type: :double, json_name: "top3"
  field :top_5, 3, type: :double, json_name: "top5"
  field :top_10, 4, type: :double, json_name: "top10"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.QualityMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :doc_recall, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.QualityMetrics.TopkMetrics,
    json_name: "docRecall"

  field :doc_precision, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.QualityMetrics.TopkMetrics,
    json_name: "docPrecision"

  field :doc_ndcg, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.QualityMetrics.TopkMetrics,
    json_name: "docNdcg"

  field :page_recall, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.QualityMetrics.TopkMetrics,
    json_name: "pageRecall"

  field :page_ndcg, 5,
    type: Google.Cloud.Discoveryengine.V1alpha.QualityMetrics.TopkMetrics,
    json_name: "pageNdcg"
end