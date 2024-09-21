defmodule Google.Cloud.Speech.V1.CustomClass.ClassItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, type: :string
end

defmodule Google.Cloud.Speech.V1.CustomClass do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :custom_class_id, 2, type: :string, json_name: "customClassId"
  field :items, 3, repeated: true, type: Google.Cloud.Speech.V1.CustomClass.ClassItem
end

defmodule Google.Cloud.Speech.V1.PhraseSet.Phrase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, type: :string
  field :boost, 2, type: :float
end

defmodule Google.Cloud.Speech.V1.PhraseSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :phrases, 2, repeated: true, type: Google.Cloud.Speech.V1.PhraseSet.Phrase
  field :boost, 4, type: :float
end

defmodule Google.Cloud.Speech.V1.SpeechAdaptation.ABNFGrammar do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :abnf_strings, 1, repeated: true, type: :string, json_name: "abnfStrings"
end

defmodule Google.Cloud.Speech.V1.SpeechAdaptation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :phrase_sets, 1,
    repeated: true,
    type: Google.Cloud.Speech.V1.PhraseSet,
    json_name: "phraseSets"

  field :phrase_set_references, 2,
    repeated: true,
    type: :string,
    json_name: "phraseSetReferences",
    deprecated: false

  field :custom_classes, 3,
    repeated: true,
    type: Google.Cloud.Speech.V1.CustomClass,
    json_name: "customClasses"

  field :abnf_grammar, 4,
    type: Google.Cloud.Speech.V1.SpeechAdaptation.ABNFGrammar,
    json_name: "abnfGrammar"
end

defmodule Google.Cloud.Speech.V1.TranscriptNormalization.Entry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :search, 1, type: :string
  field :replace, 2, type: :string
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Cloud.Speech.V1.TranscriptNormalization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Speech.V1.TranscriptNormalization.Entry
end