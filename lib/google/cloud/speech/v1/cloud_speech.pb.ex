defmodule Google.Cloud.Speech.V1.RecognitionConfig.AudioEncoding do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENCODING_UNSPECIFIED
          | :LINEAR16
          | :FLAC
          | :MULAW
          | :AMR
          | :AMR_WB
          | :OGG_OPUS
          | :SPEEX_WITH_HEADER_BYTE

  field :ENCODING_UNSPECIFIED, 0

  field :LINEAR16, 1

  field :FLAC, 2

  field :MULAW, 3

  field :AMR, 4

  field :AMR_WB, 5

  field :OGG_OPUS, 6

  field :SPEEX_WITH_HEADER_BYTE, 7
end

defmodule Google.Cloud.Speech.V1.RecognitionMetadata.InteractionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INTERACTION_TYPE_UNSPECIFIED
          | :DISCUSSION
          | :PRESENTATION
          | :PHONE_CALL
          | :VOICEMAIL
          | :PROFESSIONALLY_PRODUCED
          | :VOICE_SEARCH
          | :VOICE_COMMAND
          | :DICTATION

  field :INTERACTION_TYPE_UNSPECIFIED, 0

  field :DISCUSSION, 1

  field :PRESENTATION, 2

  field :PHONE_CALL, 3

  field :VOICEMAIL, 4

  field :PROFESSIONALLY_PRODUCED, 5

  field :VOICE_SEARCH, 6

  field :VOICE_COMMAND, 7

  field :DICTATION, 8
end

defmodule Google.Cloud.Speech.V1.RecognitionMetadata.MicrophoneDistance do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MICROPHONE_DISTANCE_UNSPECIFIED | :NEARFIELD | :MIDFIELD | :FARFIELD

  field :MICROPHONE_DISTANCE_UNSPECIFIED, 0

  field :NEARFIELD, 1

  field :MIDFIELD, 2

  field :FARFIELD, 3
end

defmodule Google.Cloud.Speech.V1.RecognitionMetadata.OriginalMediaType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ORIGINAL_MEDIA_TYPE_UNSPECIFIED | :AUDIO | :VIDEO

  field :ORIGINAL_MEDIA_TYPE_UNSPECIFIED, 0

  field :AUDIO, 1

  field :VIDEO, 2
end

defmodule Google.Cloud.Speech.V1.RecognitionMetadata.RecordingDeviceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :RECORDING_DEVICE_TYPE_UNSPECIFIED
          | :SMARTPHONE
          | :PC
          | :PHONE_LINE
          | :VEHICLE
          | :OTHER_OUTDOOR_DEVICE
          | :OTHER_INDOOR_DEVICE

  field :RECORDING_DEVICE_TYPE_UNSPECIFIED, 0

  field :SMARTPHONE, 1

  field :PC, 2

  field :PHONE_LINE, 3

  field :VEHICLE, 4

  field :OTHER_OUTDOOR_DEVICE, 5

  field :OTHER_INDOOR_DEVICE, 6
end

defmodule Google.Cloud.Speech.V1.StreamingRecognizeResponse.SpeechEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SPEECH_EVENT_UNSPECIFIED | :END_OF_SINGLE_UTTERANCE

  field :SPEECH_EVENT_UNSPECIFIED, 0

  field :END_OF_SINGLE_UTTERANCE, 1
end

defmodule Google.Cloud.Speech.V1.RecognizeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Speech.V1.RecognitionConfig.t() | nil,
          audio: Google.Cloud.Speech.V1.RecognitionAudio.t() | nil
        }

  defstruct [:config, :audio]

  field :config, 1, type: Google.Cloud.Speech.V1.RecognitionConfig
  field :audio, 2, type: Google.Cloud.Speech.V1.RecognitionAudio
end

defmodule Google.Cloud.Speech.V1.LongRunningRecognizeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Speech.V1.RecognitionConfig.t() | nil,
          audio: Google.Cloud.Speech.V1.RecognitionAudio.t() | nil
        }

  defstruct [:config, :audio]

  field :config, 1, type: Google.Cloud.Speech.V1.RecognitionConfig
  field :audio, 2, type: Google.Cloud.Speech.V1.RecognitionAudio
end

defmodule Google.Cloud.Speech.V1.StreamingRecognizeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streaming_request: {atom, any}
        }

  defstruct [:streaming_request]

  oneof :streaming_request, 0
  field :streaming_config, 1, type: Google.Cloud.Speech.V1.StreamingRecognitionConfig, oneof: 0
  field :audio_content, 2, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Speech.V1.StreamingRecognitionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Speech.V1.RecognitionConfig.t() | nil,
          single_utterance: boolean,
          interim_results: boolean
        }

  defstruct [:config, :single_utterance, :interim_results]

  field :config, 1, type: Google.Cloud.Speech.V1.RecognitionConfig
  field :single_utterance, 2, type: :bool
  field :interim_results, 3, type: :bool
end

defmodule Google.Cloud.Speech.V1.RecognitionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encoding: Google.Cloud.Speech.V1.RecognitionConfig.AudioEncoding.t(),
          sample_rate_hertz: integer,
          audio_channel_count: integer,
          enable_separate_recognition_per_channel: boolean,
          language_code: String.t(),
          max_alternatives: integer,
          profanity_filter: boolean,
          speech_contexts: [Google.Cloud.Speech.V1.SpeechContext.t()],
          enable_word_time_offsets: boolean,
          enable_automatic_punctuation: boolean,
          diarization_config: Google.Cloud.Speech.V1.SpeakerDiarizationConfig.t() | nil,
          metadata: Google.Cloud.Speech.V1.RecognitionMetadata.t() | nil,
          model: String.t(),
          use_enhanced: boolean
        }

  defstruct [
    :encoding,
    :sample_rate_hertz,
    :audio_channel_count,
    :enable_separate_recognition_per_channel,
    :language_code,
    :max_alternatives,
    :profanity_filter,
    :speech_contexts,
    :enable_word_time_offsets,
    :enable_automatic_punctuation,
    :diarization_config,
    :metadata,
    :model,
    :use_enhanced
  ]

  field :encoding, 1, type: Google.Cloud.Speech.V1.RecognitionConfig.AudioEncoding, enum: true
  field :sample_rate_hertz, 2, type: :int32
  field :audio_channel_count, 7, type: :int32
  field :enable_separate_recognition_per_channel, 12, type: :bool
  field :language_code, 3, type: :string
  field :max_alternatives, 4, type: :int32
  field :profanity_filter, 5, type: :bool
  field :speech_contexts, 6, repeated: true, type: Google.Cloud.Speech.V1.SpeechContext
  field :enable_word_time_offsets, 8, type: :bool
  field :enable_automatic_punctuation, 11, type: :bool
  field :diarization_config, 19, type: Google.Cloud.Speech.V1.SpeakerDiarizationConfig
  field :metadata, 9, type: Google.Cloud.Speech.V1.RecognitionMetadata
  field :model, 13, type: :string
  field :use_enhanced, 14, type: :bool
end

defmodule Google.Cloud.Speech.V1.SpeakerDiarizationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_speaker_diarization: boolean,
          min_speaker_count: integer,
          max_speaker_count: integer,
          speaker_tag: integer
        }

  defstruct [:enable_speaker_diarization, :min_speaker_count, :max_speaker_count, :speaker_tag]

  field :enable_speaker_diarization, 1, type: :bool
  field :min_speaker_count, 2, type: :int32
  field :max_speaker_count, 3, type: :int32
  field :speaker_tag, 5, type: :int32, deprecated: true
end

defmodule Google.Cloud.Speech.V1.RecognitionMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          interaction_type: Google.Cloud.Speech.V1.RecognitionMetadata.InteractionType.t(),
          industry_naics_code_of_audio: non_neg_integer,
          microphone_distance: Google.Cloud.Speech.V1.RecognitionMetadata.MicrophoneDistance.t(),
          original_media_type: Google.Cloud.Speech.V1.RecognitionMetadata.OriginalMediaType.t(),
          recording_device_type:
            Google.Cloud.Speech.V1.RecognitionMetadata.RecordingDeviceType.t(),
          recording_device_name: String.t(),
          original_mime_type: String.t(),
          audio_topic: String.t()
        }

  defstruct [
    :interaction_type,
    :industry_naics_code_of_audio,
    :microphone_distance,
    :original_media_type,
    :recording_device_type,
    :recording_device_name,
    :original_mime_type,
    :audio_topic
  ]

  field :interaction_type, 1,
    type: Google.Cloud.Speech.V1.RecognitionMetadata.InteractionType,
    enum: true

  field :industry_naics_code_of_audio, 3, type: :uint32

  field :microphone_distance, 4,
    type: Google.Cloud.Speech.V1.RecognitionMetadata.MicrophoneDistance,
    enum: true

  field :original_media_type, 5,
    type: Google.Cloud.Speech.V1.RecognitionMetadata.OriginalMediaType,
    enum: true

  field :recording_device_type, 6,
    type: Google.Cloud.Speech.V1.RecognitionMetadata.RecordingDeviceType,
    enum: true

  field :recording_device_name, 7, type: :string
  field :original_mime_type, 8, type: :string
  field :audio_topic, 10, type: :string
end

defmodule Google.Cloud.Speech.V1.SpeechContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrases: [String.t()]
        }

  defstruct [:phrases]

  field :phrases, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Speech.V1.RecognitionAudio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          audio_source: {atom, any}
        }

  defstruct [:audio_source]

  oneof :audio_source, 0
  field :content, 1, type: :bytes, oneof: 0
  field :uri, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Speech.V1.RecognizeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Speech.V1.SpeechRecognitionResult.t()]
        }

  defstruct [:results]

  field :results, 2, repeated: true, type: Google.Cloud.Speech.V1.SpeechRecognitionResult
end

defmodule Google.Cloud.Speech.V1.LongRunningRecognizeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Speech.V1.SpeechRecognitionResult.t()]
        }

  defstruct [:results]

  field :results, 2, repeated: true, type: Google.Cloud.Speech.V1.SpeechRecognitionResult
end

defmodule Google.Cloud.Speech.V1.LongRunningRecognizeMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress_percent: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          last_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:progress_percent, :start_time, :last_update_time]

  field :progress_percent, 1, type: :int32
  field :start_time, 2, type: Google.Protobuf.Timestamp
  field :last_update_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Speech.V1.StreamingRecognizeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error: Google.Rpc.Status.t() | nil,
          results: [Google.Cloud.Speech.V1.StreamingRecognitionResult.t()],
          speech_event_type: Google.Cloud.Speech.V1.StreamingRecognizeResponse.SpeechEventType.t()
        }

  defstruct [:error, :results, :speech_event_type]

  field :error, 1, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Cloud.Speech.V1.StreamingRecognitionResult

  field :speech_event_type, 4,
    type: Google.Cloud.Speech.V1.StreamingRecognizeResponse.SpeechEventType,
    enum: true
end

defmodule Google.Cloud.Speech.V1.StreamingRecognitionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alternatives: [Google.Cloud.Speech.V1.SpeechRecognitionAlternative.t()],
          is_final: boolean,
          stability: float | :infinity | :negative_infinity | :nan,
          result_end_time: Google.Protobuf.Duration.t() | nil,
          channel_tag: integer,
          language_code: String.t()
        }

  defstruct [:alternatives, :is_final, :stability, :result_end_time, :channel_tag, :language_code]

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1.SpeechRecognitionAlternative

  field :is_final, 2, type: :bool
  field :stability, 3, type: :float
  field :result_end_time, 4, type: Google.Protobuf.Duration
  field :channel_tag, 5, type: :int32
  field :language_code, 6, type: :string
end

defmodule Google.Cloud.Speech.V1.SpeechRecognitionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alternatives: [Google.Cloud.Speech.V1.SpeechRecognitionAlternative.t()],
          channel_tag: integer
        }

  defstruct [:alternatives, :channel_tag]

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1.SpeechRecognitionAlternative

  field :channel_tag, 2, type: :int32
end

defmodule Google.Cloud.Speech.V1.SpeechRecognitionAlternative do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transcript: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          words: [Google.Cloud.Speech.V1.WordInfo.t()]
        }

  defstruct [:transcript, :confidence, :words]

  field :transcript, 1, type: :string
  field :confidence, 2, type: :float
  field :words, 3, repeated: true, type: Google.Cloud.Speech.V1.WordInfo
end

defmodule Google.Cloud.Speech.V1.WordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Duration.t() | nil,
          end_time: Google.Protobuf.Duration.t() | nil,
          word: String.t(),
          speaker_tag: integer
        }

  defstruct [:start_time, :end_time, :word, :speaker_tag]

  field :start_time, 1, type: Google.Protobuf.Duration
  field :end_time, 2, type: Google.Protobuf.Duration
  field :word, 3, type: :string
  field :speaker_tag, 5, type: :int32
end

defmodule Google.Cloud.Speech.V1.Speech.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.speech.v1.Speech"

  rpc :Recognize,
      Google.Cloud.Speech.V1.RecognizeRequest,
      Google.Cloud.Speech.V1.RecognizeResponse

  rpc :LongRunningRecognize,
      Google.Cloud.Speech.V1.LongRunningRecognizeRequest,
      Google.Longrunning.Operation

  rpc :StreamingRecognize,
      stream(Google.Cloud.Speech.V1.StreamingRecognizeRequest),
      stream(Google.Cloud.Speech.V1.StreamingRecognizeResponse)
end

defmodule Google.Cloud.Speech.V1.Speech.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Speech.V1.Speech.Service
end
