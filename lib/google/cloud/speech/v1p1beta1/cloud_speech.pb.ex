defmodule Google.Cloud.Speech.V1p1beta1.RecognitionConfig.AudioEncoding do
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
          | :MP3
          | :WEBM_OPUS

  field :ENCODING_UNSPECIFIED, 0

  field :LINEAR16, 1

  field :FLAC, 2

  field :MULAW, 3

  field :AMR, 4

  field :AMR_WB, 5

  field :OGG_OPUS, 6

  field :SPEEX_WITH_HEADER_BYTE, 7

  field :MP3, 8

  field :WEBM_OPUS, 9
end

defmodule Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.InteractionType do
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

defmodule Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.MicrophoneDistance do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MICROPHONE_DISTANCE_UNSPECIFIED | :NEARFIELD | :MIDFIELD | :FARFIELD

  field :MICROPHONE_DISTANCE_UNSPECIFIED, 0

  field :NEARFIELD, 1

  field :MIDFIELD, 2

  field :FARFIELD, 3
end

defmodule Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.OriginalMediaType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ORIGINAL_MEDIA_TYPE_UNSPECIFIED | :AUDIO | :VIDEO

  field :ORIGINAL_MEDIA_TYPE_UNSPECIFIED, 0

  field :AUDIO, 1

  field :VIDEO, 2
end

defmodule Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.RecordingDeviceType do
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

defmodule Google.Cloud.Speech.V1p1beta1.StreamingRecognizeResponse.SpeechEventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SPEECH_EVENT_UNSPECIFIED | :END_OF_SINGLE_UTTERANCE

  field :SPEECH_EVENT_UNSPECIFIED, 0

  field :END_OF_SINGLE_UTTERANCE, 1
end

defmodule Google.Cloud.Speech.V1p1beta1.RecognizeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Speech.V1p1beta1.RecognitionConfig.t() | nil,
          audio: Google.Cloud.Speech.V1p1beta1.RecognitionAudio.t() | nil
        }

  defstruct [:config, :audio]

  field :config, 1, type: Google.Cloud.Speech.V1p1beta1.RecognitionConfig
  field :audio, 2, type: Google.Cloud.Speech.V1p1beta1.RecognitionAudio
end

defmodule Google.Cloud.Speech.V1p1beta1.LongRunningRecognizeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Speech.V1p1beta1.RecognitionConfig.t() | nil,
          audio: Google.Cloud.Speech.V1p1beta1.RecognitionAudio.t() | nil,
          output_config: Google.Cloud.Speech.V1p1beta1.TranscriptOutputConfig.t() | nil
        }

  defstruct [:config, :audio, :output_config]

  field :config, 1, type: Google.Cloud.Speech.V1p1beta1.RecognitionConfig
  field :audio, 2, type: Google.Cloud.Speech.V1p1beta1.RecognitionAudio
  field :output_config, 4, type: Google.Cloud.Speech.V1p1beta1.TranscriptOutputConfig
end

defmodule Google.Cloud.Speech.V1p1beta1.TranscriptOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_type: {atom, any}
        }

  defstruct [:output_type]

  oneof :output_type, 0
  field :gcs_uri, 1, type: :string, oneof: 0
end

defmodule Google.Cloud.Speech.V1p1beta1.StreamingRecognizeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          streaming_request: {atom, any}
        }

  defstruct [:streaming_request]

  oneof :streaming_request, 0

  field :streaming_config, 1,
    type: Google.Cloud.Speech.V1p1beta1.StreamingRecognitionConfig,
    oneof: 0

  field :audio_content, 2, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Speech.V1p1beta1.StreamingRecognitionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config: Google.Cloud.Speech.V1p1beta1.RecognitionConfig.t() | nil,
          single_utterance: boolean,
          interim_results: boolean
        }

  defstruct [:config, :single_utterance, :interim_results]

  field :config, 1, type: Google.Cloud.Speech.V1p1beta1.RecognitionConfig
  field :single_utterance, 2, type: :bool
  field :interim_results, 3, type: :bool
end

defmodule Google.Cloud.Speech.V1p1beta1.RecognitionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encoding: Google.Cloud.Speech.V1p1beta1.RecognitionConfig.AudioEncoding.t(),
          sample_rate_hertz: integer,
          audio_channel_count: integer,
          enable_separate_recognition_per_channel: boolean,
          language_code: String.t(),
          alternative_language_codes: [String.t()],
          max_alternatives: integer,
          profanity_filter: boolean,
          adaptation: Google.Cloud.Speech.V1p1beta1.SpeechAdaptation.t() | nil,
          speech_contexts: [Google.Cloud.Speech.V1p1beta1.SpeechContext.t()],
          enable_word_time_offsets: boolean,
          enable_word_confidence: boolean,
          enable_automatic_punctuation: boolean,
          enable_spoken_punctuation: Google.Protobuf.BoolValue.t() | nil,
          enable_spoken_emojis: Google.Protobuf.BoolValue.t() | nil,
          enable_speaker_diarization: boolean,
          diarization_speaker_count: integer,
          diarization_config: Google.Cloud.Speech.V1p1beta1.SpeakerDiarizationConfig.t() | nil,
          metadata: Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.t() | nil,
          model: String.t(),
          use_enhanced: boolean
        }

  defstruct [
    :encoding,
    :sample_rate_hertz,
    :audio_channel_count,
    :enable_separate_recognition_per_channel,
    :language_code,
    :alternative_language_codes,
    :max_alternatives,
    :profanity_filter,
    :adaptation,
    :speech_contexts,
    :enable_word_time_offsets,
    :enable_word_confidence,
    :enable_automatic_punctuation,
    :enable_spoken_punctuation,
    :enable_spoken_emojis,
    :enable_speaker_diarization,
    :diarization_speaker_count,
    :diarization_config,
    :metadata,
    :model,
    :use_enhanced
  ]

  field :encoding, 1,
    type: Google.Cloud.Speech.V1p1beta1.RecognitionConfig.AudioEncoding,
    enum: true

  field :sample_rate_hertz, 2, type: :int32
  field :audio_channel_count, 7, type: :int32
  field :enable_separate_recognition_per_channel, 12, type: :bool
  field :language_code, 3, type: :string
  field :alternative_language_codes, 18, repeated: true, type: :string
  field :max_alternatives, 4, type: :int32
  field :profanity_filter, 5, type: :bool
  field :adaptation, 20, type: Google.Cloud.Speech.V1p1beta1.SpeechAdaptation
  field :speech_contexts, 6, repeated: true, type: Google.Cloud.Speech.V1p1beta1.SpeechContext
  field :enable_word_time_offsets, 8, type: :bool
  field :enable_word_confidence, 15, type: :bool
  field :enable_automatic_punctuation, 11, type: :bool
  field :enable_spoken_punctuation, 22, type: Google.Protobuf.BoolValue
  field :enable_spoken_emojis, 23, type: Google.Protobuf.BoolValue
  field :enable_speaker_diarization, 16, type: :bool, deprecated: true
  field :diarization_speaker_count, 17, type: :int32, deprecated: true
  field :diarization_config, 19, type: Google.Cloud.Speech.V1p1beta1.SpeakerDiarizationConfig
  field :metadata, 9, type: Google.Cloud.Speech.V1p1beta1.RecognitionMetadata
  field :model, 13, type: :string
  field :use_enhanced, 14, type: :bool
end

defmodule Google.Cloud.Speech.V1p1beta1.SpeakerDiarizationConfig do
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

defmodule Google.Cloud.Speech.V1p1beta1.RecognitionMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          interaction_type: Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.InteractionType.t(),
          industry_naics_code_of_audio: non_neg_integer,
          microphone_distance:
            Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.MicrophoneDistance.t(),
          original_media_type:
            Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.OriginalMediaType.t(),
          recording_device_type:
            Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.RecordingDeviceType.t(),
          recording_device_name: String.t(),
          original_mime_type: String.t(),
          obfuscated_id: integer,
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
    :obfuscated_id,
    :audio_topic
  ]

  field :interaction_type, 1,
    type: Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.InteractionType,
    enum: true

  field :industry_naics_code_of_audio, 3, type: :uint32

  field :microphone_distance, 4,
    type: Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.MicrophoneDistance,
    enum: true

  field :original_media_type, 5,
    type: Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.OriginalMediaType,
    enum: true

  field :recording_device_type, 6,
    type: Google.Cloud.Speech.V1p1beta1.RecognitionMetadata.RecordingDeviceType,
    enum: true

  field :recording_device_name, 7, type: :string
  field :original_mime_type, 8, type: :string
  field :obfuscated_id, 9, type: :int64, deprecated: true
  field :audio_topic, 10, type: :string
end

defmodule Google.Cloud.Speech.V1p1beta1.SpeechContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          phrases: [String.t()],
          boost: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:phrases, :boost]

  field :phrases, 1, repeated: true, type: :string
  field :boost, 4, type: :float
end

defmodule Google.Cloud.Speech.V1p1beta1.RecognitionAudio do
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

defmodule Google.Cloud.Speech.V1p1beta1.RecognizeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Speech.V1p1beta1.SpeechRecognitionResult.t()]
        }

  defstruct [:results]

  field :results, 2, repeated: true, type: Google.Cloud.Speech.V1p1beta1.SpeechRecognitionResult
end

defmodule Google.Cloud.Speech.V1p1beta1.LongRunningRecognizeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Cloud.Speech.V1p1beta1.SpeechRecognitionResult.t()],
          output_config: Google.Cloud.Speech.V1p1beta1.TranscriptOutputConfig.t() | nil,
          output_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:results, :output_config, :output_error]

  field :results, 2, repeated: true, type: Google.Cloud.Speech.V1p1beta1.SpeechRecognitionResult
  field :output_config, 6, type: Google.Cloud.Speech.V1p1beta1.TranscriptOutputConfig
  field :output_error, 7, type: Google.Rpc.Status
end

defmodule Google.Cloud.Speech.V1p1beta1.LongRunningRecognizeMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress_percent: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          last_update_time: Google.Protobuf.Timestamp.t() | nil,
          uri: String.t(),
          output_config: Google.Cloud.Speech.V1p1beta1.TranscriptOutputConfig.t() | nil
        }

  defstruct [:progress_percent, :start_time, :last_update_time, :uri, :output_config]

  field :progress_percent, 1, type: :int32
  field :start_time, 2, type: Google.Protobuf.Timestamp
  field :last_update_time, 3, type: Google.Protobuf.Timestamp
  field :uri, 4, type: :string
  field :output_config, 5, type: Google.Cloud.Speech.V1p1beta1.TranscriptOutputConfig
end

defmodule Google.Cloud.Speech.V1p1beta1.StreamingRecognizeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error: Google.Rpc.Status.t() | nil,
          results: [Google.Cloud.Speech.V1p1beta1.StreamingRecognitionResult.t()],
          speech_event_type:
            Google.Cloud.Speech.V1p1beta1.StreamingRecognizeResponse.SpeechEventType.t()
        }

  defstruct [:error, :results, :speech_event_type]

  field :error, 1, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.StreamingRecognitionResult

  field :speech_event_type, 4,
    type: Google.Cloud.Speech.V1p1beta1.StreamingRecognizeResponse.SpeechEventType,
    enum: true
end

defmodule Google.Cloud.Speech.V1p1beta1.StreamingRecognitionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alternatives: [Google.Cloud.Speech.V1p1beta1.SpeechRecognitionAlternative.t()],
          is_final: boolean,
          stability: float | :infinity | :negative_infinity | :nan,
          result_end_time: Google.Protobuf.Duration.t() | nil,
          channel_tag: integer,
          language_code: String.t()
        }

  defstruct [:alternatives, :is_final, :stability, :result_end_time, :channel_tag, :language_code]

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.SpeechRecognitionAlternative

  field :is_final, 2, type: :bool
  field :stability, 3, type: :float
  field :result_end_time, 4, type: Google.Protobuf.Duration
  field :channel_tag, 5, type: :int32
  field :language_code, 6, type: :string
end

defmodule Google.Cloud.Speech.V1p1beta1.SpeechRecognitionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alternatives: [Google.Cloud.Speech.V1p1beta1.SpeechRecognitionAlternative.t()],
          channel_tag: integer,
          language_code: String.t()
        }

  defstruct [:alternatives, :channel_tag, :language_code]

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.SpeechRecognitionAlternative

  field :channel_tag, 2, type: :int32
  field :language_code, 5, type: :string
end

defmodule Google.Cloud.Speech.V1p1beta1.SpeechRecognitionAlternative do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transcript: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          words: [Google.Cloud.Speech.V1p1beta1.WordInfo.t()]
        }

  defstruct [:transcript, :confidence, :words]

  field :transcript, 1, type: :string
  field :confidence, 2, type: :float
  field :words, 3, repeated: true, type: Google.Cloud.Speech.V1p1beta1.WordInfo
end

defmodule Google.Cloud.Speech.V1p1beta1.WordInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Duration.t() | nil,
          end_time: Google.Protobuf.Duration.t() | nil,
          word: String.t(),
          confidence: float | :infinity | :negative_infinity | :nan,
          speaker_tag: integer
        }

  defstruct [:start_time, :end_time, :word, :confidence, :speaker_tag]

  field :start_time, 1, type: Google.Protobuf.Duration
  field :end_time, 2, type: Google.Protobuf.Duration
  field :word, 3, type: :string
  field :confidence, 4, type: :float
  field :speaker_tag, 5, type: :int32
end
