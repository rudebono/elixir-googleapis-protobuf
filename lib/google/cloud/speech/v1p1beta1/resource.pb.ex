defmodule Google.Cloud.Speech.V1p1beta1.CustomClass.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 2
  field :DELETED, 4
end

defmodule Google.Cloud.Speech.V1p1beta1.PhraseSet.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 2
  field :DELETED, 4
end

defmodule Google.Cloud.Speech.V1p1beta1.CustomClass.ClassItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :string
end

defmodule Google.Cloud.Speech.V1p1beta1.CustomClass.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Speech.V1p1beta1.CustomClass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :custom_class_id, 2, type: :string, json_name: "customClassId"
  field :items, 3, repeated: true, type: Google.Cloud.Speech.V1p1beta1.CustomClass.ClassItem
  field :kms_key_name, 6, type: :string, json_name: "kmsKeyName", deprecated: false
  field :kms_key_version_name, 7, type: :string, json_name: "kmsKeyVersionName", deprecated: false
  field :uid, 8, type: :string, deprecated: false
  field :display_name, 9, type: :string, json_name: "displayName", deprecated: false

  field :state, 10,
    type: Google.Cloud.Speech.V1p1beta1.CustomClass.State,
    enum: true,
    deprecated: false

  field :delete_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :annotations, 13,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.CustomClass.AnnotationsEntry,
    map: true,
    deprecated: false

  field :etag, 14, type: :string, deprecated: false
  field :reconciling, 15, type: :bool, deprecated: false
end

defmodule Google.Cloud.Speech.V1p1beta1.PhraseSet.Phrase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :value, 1, type: :string
  field :boost, 2, type: :float
end

defmodule Google.Cloud.Speech.V1p1beta1.PhraseSet.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Speech.V1p1beta1.PhraseSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :phrases, 2, repeated: true, type: Google.Cloud.Speech.V1p1beta1.PhraseSet.Phrase
  field :boost, 4, type: :float
  field :kms_key_name, 7, type: :string, json_name: "kmsKeyName", deprecated: false
  field :kms_key_version_name, 8, type: :string, json_name: "kmsKeyVersionName", deprecated: false
  field :uid, 9, type: :string, deprecated: false
  field :display_name, 10, type: :string, json_name: "displayName", deprecated: false

  field :state, 11,
    type: Google.Cloud.Speech.V1p1beta1.PhraseSet.State,
    enum: true,
    deprecated: false

  field :delete_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :annotations, 14,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.PhraseSet.AnnotationsEntry,
    map: true,
    deprecated: false

  field :etag, 15, type: :string, deprecated: false
  field :reconciling, 16, type: :bool, deprecated: false
end

defmodule Google.Cloud.Speech.V1p1beta1.SpeechAdaptation.ABNFGrammar do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :abnf_strings, 1, repeated: true, type: :string, json_name: "abnfStrings"
end

defmodule Google.Cloud.Speech.V1p1beta1.SpeechAdaptation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :phrase_sets, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.PhraseSet,
    json_name: "phraseSets"

  field :phrase_set_references, 2,
    repeated: true,
    type: :string,
    json_name: "phraseSetReferences",
    deprecated: false

  field :custom_classes, 3,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.CustomClass,
    json_name: "customClasses"

  field :abnf_grammar, 4,
    type: Google.Cloud.Speech.V1p1beta1.SpeechAdaptation.ABNFGrammar,
    json_name: "abnfGrammar"
end

defmodule Google.Cloud.Speech.V1p1beta1.TranscriptNormalization.Entry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search, 1, type: :string
  field :replace, 2, type: :string
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Cloud.Speech.V1p1beta1.TranscriptNormalization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entries, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1p1beta1.TranscriptNormalization.Entry
end
