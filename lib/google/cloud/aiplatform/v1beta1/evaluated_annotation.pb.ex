defmodule Google.Cloud.Aiplatform.V1beta1.EvaluatedAnnotation.EvaluatedAnnotationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EVALUATED_ANNOTATION_TYPE_UNSPECIFIED, 0
  field :TRUE_POSITIVE, 1
  field :FALSE_POSITIVE, 2
  field :FALSE_NEGATIVE, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ErrorAnalysisAnnotation.QueryType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :QUERY_TYPE_UNSPECIFIED, 0
  field :ALL_SIMILAR, 1
  field :SAME_CLASS_SIMILAR, 2
  field :SAME_CLASS_DISSIMILAR, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluatedAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Aiplatform.V1beta1.EvaluatedAnnotation.EvaluatedAnnotationType,
    enum: true,
    deprecated: false

  field :predictions, 2, repeated: true, type: Google.Protobuf.Value, deprecated: false

  field :ground_truths, 3,
    repeated: true,
    type: Google.Protobuf.Value,
    json_name: "groundTruths",
    deprecated: false

  field :data_item_payload, 5,
    type: Google.Protobuf.Value,
    json_name: "dataItemPayload",
    deprecated: false

  field :evaluated_data_item_view_id, 6,
    type: :string,
    json_name: "evaluatedDataItemViewId",
    deprecated: false

  field :explanations, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.EvaluatedAnnotationExplanation

  field :error_analysis_annotations, 9,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ErrorAnalysisAnnotation,
    json_name: "errorAnalysisAnnotations"
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluatedAnnotationExplanation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :explanation_type, 1, type: :string, json_name: "explanationType"
  field :explanation, 2, type: Google.Cloud.Aiplatform.V1beta1.Explanation
end

defmodule Google.Cloud.Aiplatform.V1beta1.ErrorAnalysisAnnotation.AttributedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_resource_name, 1, type: :string, json_name: "annotationResourceName"
  field :distance, 2, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.ErrorAnalysisAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :attributed_items, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ErrorAnalysisAnnotation.AttributedItem,
    json_name: "attributedItems"

  field :query_type, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ErrorAnalysisAnnotation.QueryType,
    json_name: "queryType",
    enum: true

  field :outlier_score, 3, type: :double, json_name: "outlierScore"
  field :outlier_threshold, 4, type: :double, json_name: "outlierThreshold"
end