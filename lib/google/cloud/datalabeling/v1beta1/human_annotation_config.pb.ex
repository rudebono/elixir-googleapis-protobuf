defmodule Google.Cloud.Datalabeling.V1beta1.StringAggregationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STRING_AGGREGATION_TYPE_UNSPECIFIED, 0
  field :MAJORITY_VOTE, 1
  field :UNANIMOUS_VOTE, 2
  field :NO_AGGREGATION, 3
end

defmodule Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instruction, 1, type: :string, deprecated: false

  field :annotated_dataset_display_name, 2,
    type: :string,
    json_name: "annotatedDatasetDisplayName",
    deprecated: false

  field :annotated_dataset_description, 3,
    type: :string,
    json_name: "annotatedDatasetDescription",
    deprecated: false

  field :label_group, 4, type: :string, json_name: "labelGroup", deprecated: false
  field :language_code, 5, type: :string, json_name: "languageCode", deprecated: false
  field :replica_count, 6, type: :int32, json_name: "replicaCount", deprecated: false

  field :question_duration, 7,
    type: Google.Protobuf.Duration,
    json_name: "questionDuration",
    deprecated: false

  field :contributor_emails, 9,
    repeated: true,
    type: :string,
    json_name: "contributorEmails",
    deprecated: false

  field :user_email_address, 10, type: :string, json_name: "userEmailAddress"
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageClassificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
  field :allow_multi_label, 2, type: :bool, json_name: "allowMultiLabel", deprecated: false

  field :answer_aggregation_type, 3,
    type: Google.Cloud.Datalabeling.V1beta1.StringAggregationType,
    json_name: "answerAggregationType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.BoundingPolyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
  field :instruction_message, 2, type: :string, json_name: "instructionMessage", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.PolylineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
  field :instruction_message, 2, type: :string, json_name: "instructionMessage", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.SegmentationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
  field :instruction_message, 2, type: :string, json_name: "instructionMessage"
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig.AnnotationSpecSetConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
  field :allow_multi_label, 2, type: :bool, json_name: "allowMultiLabel", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_set_configs, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig.AnnotationSpecSetConfig,
    json_name: "annotationSpecSetConfigs",
    deprecated: false

  field :apply_shot_detection, 2, type: :bool, json_name: "applyShotDetection", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ObjectDetectionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false

  field :extraction_frame_rate, 3,
    type: :double,
    json_name: "extractionFrameRate",
    deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.ObjectTrackingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.EventConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_sets, 1,
    repeated: true,
    type: :string,
    json_name: "annotationSpecSets",
    deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :allow_multi_label, 1, type: :bool, json_name: "allowMultiLabel", deprecated: false
  field :annotation_spec_set, 2, type: :string, json_name: "annotationSpecSet", deprecated: false

  field :sentiment_config, 3,
    type: Google.Cloud.Datalabeling.V1beta1.SentimentConfig,
    json_name: "sentimentConfig",
    deprecated: false
end

defmodule Google.Cloud.Datalabeling.V1beta1.SentimentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enable_label_sentiment_selection, 1,
    type: :bool,
    json_name: "enableLabelSentimentSelection"
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
end