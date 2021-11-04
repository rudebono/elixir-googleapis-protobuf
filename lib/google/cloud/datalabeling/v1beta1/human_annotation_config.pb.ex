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

  defstruct [
    :instruction,
    :annotated_dataset_display_name,
    :annotated_dataset_description,
    :label_group,
    :language_code,
    :replica_count,
    :question_duration,
    :contributor_emails,
    :user_email_address
  ]

  field :instruction, 1, type: :string

  field :annotated_dataset_display_name, 2,
    type: :string,
    json_name: "annotatedDatasetDisplayName"

  field :annotated_dataset_description, 3, type: :string, json_name: "annotatedDatasetDescription"
  field :label_group, 4, type: :string, json_name: "labelGroup"
  field :language_code, 5, type: :string, json_name: "languageCode"
  field :replica_count, 6, type: :int32, json_name: "replicaCount"
  field :question_duration, 7, type: Google.Protobuf.Duration, json_name: "questionDuration"
  field :contributor_emails, 9, repeated: true, type: :string, json_name: "contributorEmails"
  field :user_email_address, 10, type: :string, json_name: "userEmailAddress"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ImageClassificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          allow_multi_label: boolean,
          answer_aggregation_type: Google.Cloud.Datalabeling.V1beta1.StringAggregationType.t()
        }

  defstruct [:annotation_spec_set, :allow_multi_label, :answer_aggregation_type]

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet"
  field :allow_multi_label, 2, type: :bool, json_name: "allowMultiLabel"

  field :answer_aggregation_type, 3,
    type: Google.Cloud.Datalabeling.V1beta1.StringAggregationType,
    enum: true,
    json_name: "answerAggregationType"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.BoundingPolyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          instruction_message: String.t()
        }

  defstruct [:annotation_spec_set, :instruction_message]

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet"
  field :instruction_message, 2, type: :string, json_name: "instructionMessage"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.PolylineConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          instruction_message: String.t()
        }

  defstruct [:annotation_spec_set, :instruction_message]

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet"
  field :instruction_message, 2, type: :string, json_name: "instructionMessage"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.SegmentationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          instruction_message: String.t()
        }

  defstruct [:annotation_spec_set, :instruction_message]

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet"
  field :instruction_message, 2, type: :string, json_name: "instructionMessage"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig.AnnotationSpecSetConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          allow_multi_label: boolean
        }

  defstruct [:annotation_spec_set, :allow_multi_label]

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet"
  field :allow_multi_label, 2, type: :bool, json_name: "allowMultiLabel"

  def transform_module(), do: nil
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

  defstruct [:annotation_spec_set_configs, :apply_shot_detection]

  field :annotation_spec_set_configs, 1,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.VideoClassificationConfig.AnnotationSpecSetConfig,
    json_name: "annotationSpecSetConfigs"

  field :apply_shot_detection, 2, type: :bool, json_name: "applyShotDetection"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ObjectDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t(),
          extraction_frame_rate: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:annotation_spec_set, :extraction_frame_rate]

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet"
  field :extraction_frame_rate, 3, type: :double, json_name: "extractionFrameRate"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.ObjectTrackingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t()
        }

  defstruct [:annotation_spec_set]

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.EventConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_sets: [String.t()]
        }

  defstruct [:annotation_spec_sets]

  field :annotation_spec_sets, 1, repeated: true, type: :string, json_name: "annotationSpecSets"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allow_multi_label: boolean,
          annotation_spec_set: String.t(),
          sentiment_config: Google.Cloud.Datalabeling.V1beta1.SentimentConfig.t() | nil
        }

  defstruct [:allow_multi_label, :annotation_spec_set, :sentiment_config]

  field :allow_multi_label, 1, type: :bool, json_name: "allowMultiLabel"
  field :annotation_spec_set, 2, type: :string, json_name: "annotationSpecSet"

  field :sentiment_config, 3,
    type: Google.Cloud.Datalabeling.V1beta1.SentimentConfig,
    json_name: "sentimentConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.SentimentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_label_sentiment_selection: boolean
        }

  defstruct [:enable_label_sentiment_selection]

  field :enable_label_sentiment_selection, 1,
    type: :bool,
    json_name: "enableLabelSentimentSelection"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datalabeling.V1beta1.TextEntityExtractionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          annotation_spec_set: String.t()
        }

  defstruct [:annotation_spec_set]

  field :annotation_spec_set, 1, type: :string, json_name: "annotationSpecSet"

  def transform_module(), do: nil
end
