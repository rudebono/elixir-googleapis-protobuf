defmodule Google.Cloud.Speech.V2.Recognizer.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 2
  field :DELETED, 4
end

defmodule Google.Cloud.Speech.V2.ExplicitDecodingConfig.AudioEncoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :AUDIO_ENCODING_UNSPECIFIED, 0
  field :LINEAR16, 1
  field :MULAW, 2
  field :ALAW, 3
end

defmodule Google.Cloud.Speech.V2.RecognitionFeatures.MultiChannelMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MULTI_CHANNEL_MODE_UNSPECIFIED, 0
  field :SEPARATE_RECOGNITION_PER_CHANNEL, 1
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeRequest.ProcessingStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROCESSING_STRATEGY_UNSPECIFIED, 0
  field :DYNAMIC_BATCHING, 1
end

defmodule Google.Cloud.Speech.V2.StreamingRecognizeResponse.SpeechEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SPEECH_EVENT_TYPE_UNSPECIFIED, 0
  field :END_OF_SINGLE_UTTERANCE, 1
  field :SPEECH_ACTIVITY_BEGIN, 2
  field :SPEECH_ACTIVITY_END, 3
end

defmodule Google.Cloud.Speech.V2.CustomClass.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 2
  field :DELETED, 4
end

defmodule Google.Cloud.Speech.V2.PhraseSet.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 2
  field :DELETED, 4
end

defmodule Google.Cloud.Speech.V2.CreateRecognizerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recognizer, 1, type: Google.Cloud.Speech.V2.Recognizer, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :recognizer_id, 3, type: :string, json_name: "recognizerId"
  field :parent, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V2.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :request, 0

  oneof :metadata, 1

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :resource, 3, type: :string
  field :method, 4, type: :string
  field :kms_key_name, 6, type: :string, json_name: "kmsKeyName", deprecated: false
  field :kms_key_version_name, 7, type: :string, json_name: "kmsKeyVersionName", deprecated: false

  field :batch_recognize_request, 8,
    type: Google.Cloud.Speech.V2.BatchRecognizeRequest,
    json_name: "batchRecognizeRequest",
    oneof: 0

  field :create_recognizer_request, 9,
    type: Google.Cloud.Speech.V2.CreateRecognizerRequest,
    json_name: "createRecognizerRequest",
    oneof: 0

  field :update_recognizer_request, 10,
    type: Google.Cloud.Speech.V2.UpdateRecognizerRequest,
    json_name: "updateRecognizerRequest",
    oneof: 0

  field :delete_recognizer_request, 11,
    type: Google.Cloud.Speech.V2.DeleteRecognizerRequest,
    json_name: "deleteRecognizerRequest",
    oneof: 0

  field :undelete_recognizer_request, 12,
    type: Google.Cloud.Speech.V2.UndeleteRecognizerRequest,
    json_name: "undeleteRecognizerRequest",
    oneof: 0

  field :create_custom_class_request, 13,
    type: Google.Cloud.Speech.V2.CreateCustomClassRequest,
    json_name: "createCustomClassRequest",
    oneof: 0

  field :update_custom_class_request, 14,
    type: Google.Cloud.Speech.V2.UpdateCustomClassRequest,
    json_name: "updateCustomClassRequest",
    oneof: 0

  field :delete_custom_class_request, 15,
    type: Google.Cloud.Speech.V2.DeleteCustomClassRequest,
    json_name: "deleteCustomClassRequest",
    oneof: 0

  field :undelete_custom_class_request, 16,
    type: Google.Cloud.Speech.V2.UndeleteCustomClassRequest,
    json_name: "undeleteCustomClassRequest",
    oneof: 0

  field :create_phrase_set_request, 17,
    type: Google.Cloud.Speech.V2.CreatePhraseSetRequest,
    json_name: "createPhraseSetRequest",
    oneof: 0

  field :update_phrase_set_request, 18,
    type: Google.Cloud.Speech.V2.UpdatePhraseSetRequest,
    json_name: "updatePhraseSetRequest",
    oneof: 0

  field :delete_phrase_set_request, 19,
    type: Google.Cloud.Speech.V2.DeletePhraseSetRequest,
    json_name: "deletePhraseSetRequest",
    oneof: 0

  field :undelete_phrase_set_request, 20,
    type: Google.Cloud.Speech.V2.UndeletePhraseSetRequest,
    json_name: "undeletePhraseSetRequest",
    oneof: 0

  field :update_config_request, 21,
    type: Google.Cloud.Speech.V2.UpdateConfigRequest,
    json_name: "updateConfigRequest",
    oneof: 0,
    deprecated: true

  field :progress_percent, 22, type: :int32, json_name: "progressPercent"

  field :batch_recognize_metadata, 23,
    type: Google.Cloud.Speech.V2.BatchRecognizeMetadata,
    json_name: "batchRecognizeMetadata",
    oneof: 1
end

defmodule Google.Cloud.Speech.V2.ListRecognizersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Cloud.Speech.V2.ListRecognizersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recognizers, 1, repeated: true, type: Google.Cloud.Speech.V2.Recognizer
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Speech.V2.GetRecognizerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V2.UpdateRecognizerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recognizer, 1, type: Google.Cloud.Speech.V2.Recognizer, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Speech.V2.DeleteRecognizerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
  field :etag, 3, type: :string
end

defmodule Google.Cloud.Speech.V2.UndeleteRecognizerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :etag, 4, type: :string
end

defmodule Google.Cloud.Speech.V2.Recognizer.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Speech.V2.Recognizer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
  field :model, 4, type: :string, deprecated: true

  field :language_codes, 17,
    repeated: true,
    type: :string,
    json_name: "languageCodes",
    deprecated: true

  field :default_recognition_config, 6,
    type: Google.Cloud.Speech.V2.RecognitionConfig,
    json_name: "defaultRecognitionConfig"

  field :annotations, 7,
    repeated: true,
    type: Google.Cloud.Speech.V2.Recognizer.AnnotationsEntry,
    map: true

  field :state, 8, type: Google.Cloud.Speech.V2.Recognizer.State, enum: true, deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :etag, 12, type: :string, deprecated: false
  field :reconciling, 13, type: :bool, deprecated: false
  field :kms_key_name, 15, type: :string, json_name: "kmsKeyName", deprecated: false

  field :kms_key_version_name, 16,
    type: :string,
    json_name: "kmsKeyVersionName",
    deprecated: false
end

defmodule Google.Cloud.Speech.V2.AutoDetectDecodingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Speech.V2.ExplicitDecodingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :encoding, 1,
    type: Google.Cloud.Speech.V2.ExplicitDecodingConfig.AudioEncoding,
    enum: true,
    deprecated: false

  field :sample_rate_hertz, 2, type: :int32, json_name: "sampleRateHertz"
  field :audio_channel_count, 3, type: :int32, json_name: "audioChannelCount"
end

defmodule Google.Cloud.Speech.V2.SpeakerDiarizationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_speaker_count, 2, type: :int32, json_name: "minSpeakerCount", deprecated: false
  field :max_speaker_count, 3, type: :int32, json_name: "maxSpeakerCount", deprecated: false
end

defmodule Google.Cloud.Speech.V2.RecognitionFeatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :profanity_filter, 1, type: :bool, json_name: "profanityFilter"
  field :enable_word_time_offsets, 2, type: :bool, json_name: "enableWordTimeOffsets"
  field :enable_word_confidence, 3, type: :bool, json_name: "enableWordConfidence"
  field :enable_automatic_punctuation, 4, type: :bool, json_name: "enableAutomaticPunctuation"
  field :enable_spoken_punctuation, 14, type: :bool, json_name: "enableSpokenPunctuation"
  field :enable_spoken_emojis, 15, type: :bool, json_name: "enableSpokenEmojis"

  field :multi_channel_mode, 17,
    type: Google.Cloud.Speech.V2.RecognitionFeatures.MultiChannelMode,
    json_name: "multiChannelMode",
    enum: true

  field :diarization_config, 9,
    type: Google.Cloud.Speech.V2.SpeakerDiarizationConfig,
    json_name: "diarizationConfig"

  field :max_alternatives, 16, type: :int32, json_name: "maxAlternatives"
end

defmodule Google.Cloud.Speech.V2.TranscriptNormalization.Entry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search, 1, type: :string
  field :replace, 2, type: :string
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Cloud.Speech.V2.TranscriptNormalization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Speech.V2.TranscriptNormalization.Entry
end

defmodule Google.Cloud.Speech.V2.SpeechAdaptation.AdaptationPhraseSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value, 0

  field :phrase_set, 1, type: :string, json_name: "phraseSet", oneof: 0, deprecated: false

  field :inline_phrase_set, 2,
    type: Google.Cloud.Speech.V2.PhraseSet,
    json_name: "inlinePhraseSet",
    oneof: 0
end

defmodule Google.Cloud.Speech.V2.SpeechAdaptation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phrase_sets, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.SpeechAdaptation.AdaptationPhraseSet,
    json_name: "phraseSets"

  field :custom_classes, 2,
    repeated: true,
    type: Google.Cloud.Speech.V2.CustomClass,
    json_name: "customClasses"
end

defmodule Google.Cloud.Speech.V2.RecognitionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :decoding_config, 0

  field :auto_decoding_config, 7,
    type: Google.Cloud.Speech.V2.AutoDetectDecodingConfig,
    json_name: "autoDecodingConfig",
    oneof: 0

  field :explicit_decoding_config, 8,
    type: Google.Cloud.Speech.V2.ExplicitDecodingConfig,
    json_name: "explicitDecodingConfig",
    oneof: 0

  field :model, 9, type: :string, deprecated: false

  field :language_codes, 10,
    repeated: true,
    type: :string,
    json_name: "languageCodes",
    deprecated: false

  field :features, 2, type: Google.Cloud.Speech.V2.RecognitionFeatures
  field :adaptation, 6, type: Google.Cloud.Speech.V2.SpeechAdaptation

  field :transcript_normalization, 11,
    type: Google.Cloud.Speech.V2.TranscriptNormalization,
    json_name: "transcriptNormalization",
    deprecated: false
end

defmodule Google.Cloud.Speech.V2.RecognizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :audio_source, 0

  field :recognizer, 3, type: :string, deprecated: false
  field :config, 1, type: Google.Cloud.Speech.V2.RecognitionConfig
  field :config_mask, 8, type: Google.Protobuf.FieldMask, json_name: "configMask"
  field :content, 5, type: :bytes, oneof: 0
  field :uri, 6, type: :string, oneof: 0
end

defmodule Google.Cloud.Speech.V2.RecognitionResponseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :total_billed_duration, 6,
    type: Google.Protobuf.Duration,
    json_name: "totalBilledDuration"
end

defmodule Google.Cloud.Speech.V2.SpeechRecognitionAlternative do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transcript, 1, type: :string
  field :confidence, 2, type: :float
  field :words, 3, repeated: true, type: Google.Cloud.Speech.V2.WordInfo
end

defmodule Google.Cloud.Speech.V2.WordInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_offset, 1, type: Google.Protobuf.Duration, json_name: "startOffset"
  field :end_offset, 2, type: Google.Protobuf.Duration, json_name: "endOffset"
  field :word, 3, type: :string
  field :confidence, 4, type: :float
  field :speaker_label, 6, type: :string, json_name: "speakerLabel"
end

defmodule Google.Cloud.Speech.V2.SpeechRecognitionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.SpeechRecognitionAlternative

  field :channel_tag, 2, type: :int32, json_name: "channelTag"
  field :result_end_offset, 4, type: Google.Protobuf.Duration, json_name: "resultEndOffset"
  field :language_code, 5, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Speech.V2.RecognizeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 3, repeated: true, type: Google.Cloud.Speech.V2.SpeechRecognitionResult
  field :metadata, 2, type: Google.Cloud.Speech.V2.RecognitionResponseMetadata
end

defmodule Google.Cloud.Speech.V2.StreamingRecognitionFeatures.VoiceActivityTimeout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :speech_start_timeout, 1, type: Google.Protobuf.Duration, json_name: "speechStartTimeout"
  field :speech_end_timeout, 2, type: Google.Protobuf.Duration, json_name: "speechEndTimeout"
end

defmodule Google.Cloud.Speech.V2.StreamingRecognitionFeatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_voice_activity_events, 1, type: :bool, json_name: "enableVoiceActivityEvents"
  field :interim_results, 2, type: :bool, json_name: "interimResults"

  field :voice_activity_timeout, 3,
    type: Google.Cloud.Speech.V2.StreamingRecognitionFeatures.VoiceActivityTimeout,
    json_name: "voiceActivityTimeout"
end

defmodule Google.Cloud.Speech.V2.StreamingRecognitionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :config, 1, type: Google.Cloud.Speech.V2.RecognitionConfig, deprecated: false
  field :config_mask, 3, type: Google.Protobuf.FieldMask, json_name: "configMask"

  field :streaming_features, 2,
    type: Google.Cloud.Speech.V2.StreamingRecognitionFeatures,
    json_name: "streamingFeatures"
end

defmodule Google.Cloud.Speech.V2.StreamingRecognizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :streaming_request, 0

  field :recognizer, 3, type: :string, deprecated: false

  field :streaming_config, 6,
    type: Google.Cloud.Speech.V2.StreamingRecognitionConfig,
    json_name: "streamingConfig",
    oneof: 0

  field :audio, 5, type: :bytes, oneof: 0
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recognizer, 1, type: :string, deprecated: false
  field :config, 4, type: Google.Cloud.Speech.V2.RecognitionConfig
  field :config_mask, 5, type: Google.Protobuf.FieldMask, json_name: "configMask"
  field :files, 3, repeated: true, type: Google.Cloud.Speech.V2.BatchRecognizeFileMetadata

  field :recognition_output_config, 6,
    type: Google.Cloud.Speech.V2.RecognitionOutputConfig,
    json_name: "recognitionOutputConfig"

  field :processing_strategy, 7,
    type: Google.Cloud.Speech.V2.BatchRecognizeRequest.ProcessingStrategy,
    json_name: "processingStrategy",
    enum: true
end

defmodule Google.Cloud.Speech.V2.GcsOutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Speech.V2.InlineOutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Speech.V2.NativeOutputFileFormatConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Speech.V2.VttOutputFileFormatConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Speech.V2.SrtOutputFileFormatConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Speech.V2.OutputFormatConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :native, 1, type: Google.Cloud.Speech.V2.NativeOutputFileFormatConfig
  field :vtt, 2, type: Google.Cloud.Speech.V2.VttOutputFileFormatConfig
  field :srt, 3, type: Google.Cloud.Speech.V2.SrtOutputFileFormatConfig
end

defmodule Google.Cloud.Speech.V2.RecognitionOutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :output, 0

  field :gcs_output_config, 1,
    type: Google.Cloud.Speech.V2.GcsOutputConfig,
    json_name: "gcsOutputConfig",
    oneof: 0

  field :inline_response_config, 2,
    type: Google.Cloud.Speech.V2.InlineOutputConfig,
    json_name: "inlineResponseConfig",
    oneof: 0

  field :output_format_config, 3,
    type: Google.Cloud.Speech.V2.OutputFormatConfig,
    json_name: "outputFormatConfig",
    deprecated: false
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeResponse.ResultsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Speech.V2.BatchRecognizeFileResult
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.BatchRecognizeResponse.ResultsEntry,
    map: true

  field :total_billed_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "totalBilledDuration"
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Speech.V2.SpeechRecognitionResult
  field :metadata, 2, type: Google.Cloud.Speech.V2.RecognitionResponseMetadata
end

defmodule Google.Cloud.Speech.V2.CloudStorageResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :vtt_format_uri, 2, type: :string, json_name: "vttFormatUri"
  field :srt_format_uri, 3, type: :string, json_name: "srtFormatUri"
end

defmodule Google.Cloud.Speech.V2.InlineResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transcript, 1, type: Google.Cloud.Speech.V2.BatchRecognizeResults
  field :vtt_captions, 2, type: :string, json_name: "vttCaptions"
  field :srt_captions, 3, type: :string, json_name: "srtCaptions"
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeFileResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :result, 0

  field :error, 2, type: Google.Rpc.Status
  field :metadata, 3, type: Google.Cloud.Speech.V2.RecognitionResponseMetadata

  field :cloud_storage_result, 5,
    type: Google.Cloud.Speech.V2.CloudStorageResult,
    json_name: "cloudStorageResult",
    oneof: 0

  field :inline_result, 6,
    type: Google.Cloud.Speech.V2.InlineResult,
    json_name: "inlineResult",
    oneof: 0

  field :uri, 1, type: :string, deprecated: true
  field :transcript, 4, type: Google.Cloud.Speech.V2.BatchRecognizeResults, deprecated: true
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeTranscriptionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :progress_percent, 1, type: :int32, json_name: "progressPercent"
  field :error, 2, type: Google.Rpc.Status
  field :uri, 3, type: :string
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeMetadata.TranscriptionMetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Speech.V2.BatchRecognizeTranscriptionMetadata
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :transcription_metadata, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.BatchRecognizeMetadata.TranscriptionMetadataEntry,
    json_name: "transcriptionMetadata",
    map: true
end

defmodule Google.Cloud.Speech.V2.BatchRecognizeFileMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :audio_source, 0

  field :uri, 1, type: :string, oneof: 0
  field :config, 4, type: Google.Cloud.Speech.V2.RecognitionConfig
  field :config_mask, 5, type: Google.Protobuf.FieldMask, json_name: "configMask"
end

defmodule Google.Cloud.Speech.V2.StreamingRecognitionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :alternatives, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.SpeechRecognitionAlternative

  field :is_final, 2, type: :bool, json_name: "isFinal"
  field :stability, 3, type: :float
  field :result_end_offset, 4, type: Google.Protobuf.Duration, json_name: "resultEndOffset"
  field :channel_tag, 5, type: :int32, json_name: "channelTag"
  field :language_code, 6, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Speech.V2.StreamingRecognizeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 6, repeated: true, type: Google.Cloud.Speech.V2.StreamingRecognitionResult

  field :speech_event_type, 3,
    type: Google.Cloud.Speech.V2.StreamingRecognizeResponse.SpeechEventType,
    json_name: "speechEventType",
    enum: true

  field :speech_event_offset, 7, type: Google.Protobuf.Duration, json_name: "speechEventOffset"
  field :metadata, 5, type: Google.Cloud.Speech.V2.RecognitionResponseMetadata
end

defmodule Google.Cloud.Speech.V2.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :kms_key_name, 2, type: :string, json_name: "kmsKeyName", deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Speech.V2.GetConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V2.UpdateConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :config, 1, type: Google.Cloud.Speech.V2.Config, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Speech.V2.CustomClass.ClassItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value, 1, type: :string
end

defmodule Google.Cloud.Speech.V2.CustomClass.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Speech.V2.CustomClass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false
  field :items, 5, repeated: true, type: Google.Cloud.Speech.V2.CustomClass.ClassItem
  field :state, 15, type: Google.Cloud.Speech.V2.CustomClass.State, enum: true, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :annotations, 10,
    repeated: true,
    type: Google.Cloud.Speech.V2.CustomClass.AnnotationsEntry,
    map: true,
    deprecated: false

  field :etag, 11, type: :string, deprecated: false
  field :reconciling, 12, type: :bool, deprecated: false
  field :kms_key_name, 13, type: :string, json_name: "kmsKeyName", deprecated: false

  field :kms_key_version_name, 14,
    type: :string,
    json_name: "kmsKeyVersionName",
    deprecated: false
end

defmodule Google.Cloud.Speech.V2.PhraseSet.Phrase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value, 1, type: :string
  field :boost, 2, type: :float
end

defmodule Google.Cloud.Speech.V2.PhraseSet.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Speech.V2.PhraseSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :phrases, 3, repeated: true, type: Google.Cloud.Speech.V2.PhraseSet.Phrase
  field :boost, 4, type: :float
  field :display_name, 5, type: :string, json_name: "displayName"
  field :state, 15, type: Google.Cloud.Speech.V2.PhraseSet.State, enum: true, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :annotations, 10,
    repeated: true,
    type: Google.Cloud.Speech.V2.PhraseSet.AnnotationsEntry,
    map: true

  field :etag, 11, type: :string, deprecated: false
  field :reconciling, 12, type: :bool, deprecated: false
  field :kms_key_name, 13, type: :string, json_name: "kmsKeyName", deprecated: false

  field :kms_key_version_name, 14,
    type: :string,
    json_name: "kmsKeyVersionName",
    deprecated: false
end

defmodule Google.Cloud.Speech.V2.CreateCustomClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :custom_class, 1,
    type: Google.Cloud.Speech.V2.CustomClass,
    json_name: "customClass",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :custom_class_id, 3, type: :string, json_name: "customClassId"
  field :parent, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V2.ListCustomClassesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Cloud.Speech.V2.ListCustomClassesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :custom_classes, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.CustomClass,
    json_name: "customClasses"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Speech.V2.GetCustomClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V2.UpdateCustomClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :custom_class, 1,
    type: Google.Cloud.Speech.V2.CustomClass,
    json_name: "customClass",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Speech.V2.DeleteCustomClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
  field :etag, 3, type: :string
end

defmodule Google.Cloud.Speech.V2.UndeleteCustomClassRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :etag, 4, type: :string
end

defmodule Google.Cloud.Speech.V2.CreatePhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phrase_set, 1,
    type: Google.Cloud.Speech.V2.PhraseSet,
    json_name: "phraseSet",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :phrase_set_id, 3, type: :string, json_name: "phraseSetId"
  field :parent, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V2.ListPhraseSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"
end

defmodule Google.Cloud.Speech.V2.ListPhraseSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phrase_sets, 1,
    repeated: true,
    type: Google.Cloud.Speech.V2.PhraseSet,
    json_name: "phraseSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Speech.V2.GetPhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Speech.V2.UpdatePhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :phrase_set, 1,
    type: Google.Cloud.Speech.V2.PhraseSet,
    json_name: "phraseSet",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Cloud.Speech.V2.DeletePhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
  field :allow_missing, 4, type: :bool, json_name: "allowMissing"
  field :etag, 3, type: :string
end

defmodule Google.Cloud.Speech.V2.UndeletePhraseSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :etag, 4, type: :string
end

defmodule Google.Cloud.Speech.V2.Speech.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.speech.v2.Speech", protoc_gen_elixir_version: "0.12.0"

  rpc :CreateRecognizer,
      Google.Cloud.Speech.V2.CreateRecognizerRequest,
      Google.Longrunning.Operation

  rpc :ListRecognizers,
      Google.Cloud.Speech.V2.ListRecognizersRequest,
      Google.Cloud.Speech.V2.ListRecognizersResponse

  rpc :GetRecognizer,
      Google.Cloud.Speech.V2.GetRecognizerRequest,
      Google.Cloud.Speech.V2.Recognizer

  rpc :UpdateRecognizer,
      Google.Cloud.Speech.V2.UpdateRecognizerRequest,
      Google.Longrunning.Operation

  rpc :DeleteRecognizer,
      Google.Cloud.Speech.V2.DeleteRecognizerRequest,
      Google.Longrunning.Operation

  rpc :UndeleteRecognizer,
      Google.Cloud.Speech.V2.UndeleteRecognizerRequest,
      Google.Longrunning.Operation

  rpc :Recognize,
      Google.Cloud.Speech.V2.RecognizeRequest,
      Google.Cloud.Speech.V2.RecognizeResponse

  rpc :StreamingRecognize,
      stream(Google.Cloud.Speech.V2.StreamingRecognizeRequest),
      stream(Google.Cloud.Speech.V2.StreamingRecognizeResponse)

  rpc :BatchRecognize, Google.Cloud.Speech.V2.BatchRecognizeRequest, Google.Longrunning.Operation

  rpc :GetConfig, Google.Cloud.Speech.V2.GetConfigRequest, Google.Cloud.Speech.V2.Config

  rpc :UpdateConfig, Google.Cloud.Speech.V2.UpdateConfigRequest, Google.Cloud.Speech.V2.Config

  rpc :CreateCustomClass,
      Google.Cloud.Speech.V2.CreateCustomClassRequest,
      Google.Longrunning.Operation

  rpc :ListCustomClasses,
      Google.Cloud.Speech.V2.ListCustomClassesRequest,
      Google.Cloud.Speech.V2.ListCustomClassesResponse

  rpc :GetCustomClass,
      Google.Cloud.Speech.V2.GetCustomClassRequest,
      Google.Cloud.Speech.V2.CustomClass

  rpc :UpdateCustomClass,
      Google.Cloud.Speech.V2.UpdateCustomClassRequest,
      Google.Longrunning.Operation

  rpc :DeleteCustomClass,
      Google.Cloud.Speech.V2.DeleteCustomClassRequest,
      Google.Longrunning.Operation

  rpc :UndeleteCustomClass,
      Google.Cloud.Speech.V2.UndeleteCustomClassRequest,
      Google.Longrunning.Operation

  rpc :CreatePhraseSet,
      Google.Cloud.Speech.V2.CreatePhraseSetRequest,
      Google.Longrunning.Operation

  rpc :ListPhraseSets,
      Google.Cloud.Speech.V2.ListPhraseSetsRequest,
      Google.Cloud.Speech.V2.ListPhraseSetsResponse

  rpc :GetPhraseSet, Google.Cloud.Speech.V2.GetPhraseSetRequest, Google.Cloud.Speech.V2.PhraseSet

  rpc :UpdatePhraseSet,
      Google.Cloud.Speech.V2.UpdatePhraseSetRequest,
      Google.Longrunning.Operation

  rpc :DeletePhraseSet,
      Google.Cloud.Speech.V2.DeletePhraseSetRequest,
      Google.Longrunning.Operation

  rpc :UndeletePhraseSet,
      Google.Cloud.Speech.V2.UndeletePhraseSetRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Speech.V2.Speech.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Speech.V2.Speech.Service
end