defmodule Google.Cloud.Datalabeling.V1beta1.StringAggregationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STRING_AGGREGATION_TYPE_UNSPECIFIED
          | :MAJORITY_VOTE
          | :UNANIMOUS_VOTE
          | :NO_AGGREGATION

  field :STRING_AGGREGATION_TYPE_UNSPECIFIED, 0
  field :MAJORITY_VOTE, 1
  field :UNANIMOUS_VOTE, 2
  field :NO_AGGREGATION, 3
end
defmodule Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instruction: String.t(),
          annotated_dataset_display_name: String.t(),
          annotated_dataset_description: String.t(),
          label_group: String.t(),
          language_code: String.t(),
          replica_count: integer,
          question_duration: Google.Protobuf.Duration.t() | nil,
          contributor_emails: [String.t()],
          user_email_address: String.t()
        }

  defstruct instruction: "",
            annotated_dataset_display_name: "",
            annotated_dataset_description: "",
            label_group: "",
            language_code: "",
            replica_count: 0,
            question_duration: nil,
            contributor_emails: [],
            user_email_address: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          allow_multi_label: boolean,
          answer_aggregation_type: Google.Cloud.Datalabeling.V1beta1.StringAggregationType.t()
        }

  defstruct annotation_spec_set: "",
            allow_multi_label: false,
            answer_aggregation_type: :STRING_AGGREGATION_TYPE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          instruction_message: String.t()
        }

  defstruct annotation_spec_set: "",
            instruction_message: ""

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
  field :instruction_message, 2, type: :string, json_name: "instructionMessage", deprecated: false
end
defmodule Google.Cloud.Datalabeling.V1beta1.PolylineConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          instruction_message: String.t()
        }

  defstruct annotation_spec_set: "",
            instruction_message: ""

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
  field :instruction_message, 2, type: :string, json_name: "instructionMessage", deprecated: false
end
defmodule Google.Cloud.Datalabeling.V1beta1.SegmentationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          instruction_message: String.t()
        }

  defstruct annotation_spec_set: "",
            instruction_message: ""

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
  field :instruction_message, 2, type: :string, json_name: "instructionMessage"
end
defmodule Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig.AnnotationSpecSetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          allow_multi_label: boolean
        }

  defstruct annotation_spec_set: "",
            allow_multi_label: false

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
  field :allow_multi_label, 2, type: :bool, json_name: "allowMultiLabel", deprecated: false
end
defmodule Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set_configs: [
            Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig.AnnotationSpecSetConfig.t()
          ],
          apply_shot_detection: boolean
        }

  defstruct annotation_spec_set_configs: [],
            apply_shot_detection: false

  field :annotation_spec_set_configs, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig.AnnotationSpecSetConfig,
    json_name: "annotationSpecSetConfigs",
    deprecated: false

  field :apply_shot_detection, 2, type: :bool, json_name: "applyShotDetection", deprecated: false
end
defmodule Google.Cloud.Datalabeling.V1beta1.ObjectDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          extraction_frame_rate: float | :infinity | :negative_infinity | :nan
        }

  defstruct annotation_spec_set: "",
            extraction_frame_rate: 0.0

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false

  field :extraction_frame_rate, 3,
    type: :double,
    json_name: "extractionFrameRate",
    deprecated: false
end
defmodule Google.Cloud.Datalabeling.V1beta1.ObjectTrackingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t()
        }

  defstruct annotation_spec_set: ""

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
end
defmodule Google.Cloud.Datalabeling.V1beta1.EventConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_sets: [String.t()]
        }

  defstruct annotation_spec_sets: []

  field :annotation_spec_sets, 1,
    repeated: true,
    type: :string,
    json_name: "annotationSpecSets",
    deprecated: false
end
defmodule Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allow_multi_label: boolean,
          annotation_spec_set: String.t(),
          sentiment_config: Google.Cloud.Datalabeling.V1beta1.SentimentConfig.t() | nil
        }

  defstruct allow_multi_label: false,
            annotation_spec_set: "",
            sentiment_config: nil

  field :allow_multi_label, 1, type: :bool, json_name: "allowMultiLabel", deprecated: false
  field :annotation_spec_set, 2, type: :string, json_name: "annotationSpecSet", deprecated: false

  field :sentiment_config, 3,
    type: Google.Cloud.Datalabeling.V1beta1.SentimentConfig,
    json_name: "sentimentConfig",
    deprecated: false
end
defmodule Google.Cloud.Datalabeling.V1beta1.SentimentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_label_sentiment_selection: boolean
        }

  defstruct enable_label_sentiment_selection: false

  field :enable_label_sentiment_selection, 1,
    type: :bool,
    json_name: "enableLabelSentimentSelection"
end
defmodule Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t()
        }

  defstruct annotation_spec_set: ""

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet", deprecated: false
end
